"""Fault injection into actual helper smali branches, using a fake retriever.
Not ART/native validation. Unknown instructions raise errors instead of silently passing.
"""
import json,re,sys
from pathlib import Path
from stability_local_audit_20260905 import methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
class Fault(Exception):
    def __init__(self,kind):self.kind=kind
class VM:
    def __init__(self,path,fail='',null=False):self.code=methods(path);self.fail=fail;self.null=null;self.released=0;self.frame=object()
    def call(self,sig,args):
        body=next(v[0] for k,v in self.code.items() if k.split()[-1]==sig)
        lines=[l.strip() for l in body.splitlines() if l.strip() and not l.strip().startswith(('.', '#'))]
        labels={line:i for i,line in enumerate(lines) if line.startswith(':')};traps=[]
        for line in body.splitlines():
            m=re.match(r'\s*\.catch(?: (\S+)|all) \{(:\w+) \.\. (:\w+)\} (:\w+)',line)
            if m:kind,start,end,target=m.groups();traps.append((kind,labels[start],labels[end],labels[target]))
        r={f'p{i}':a for i,a in enumerate(args)};result=None;pending=None;pc=0
        while pc<len(lines):
            origin=pc;line=lines[pc];pc+=1
            if line.startswith(':'):continue
            op,_,rest=line.partition(' ');parts=rest.split(', ')
            try:
                if op=='new-instance':r[parts[0]]=object()
                elif op.startswith('const'):
                    r[parts[0]]=int(parts[1],0)
                    if op.startswith('const-wide'):r['v'+str(int(parts[0][1:])+1)]=0
                elif op.startswith('invoke'):
                    m=re.fullmatch(r'\{([^}]*)\}, (.+)',rest);regs,target=m.groups();vals=[r[v] for v in regs.split(', ')]
                    if '-><init>' in target:
                        if self.fail=='constructor':raise Fault('Exception')
                    elif '->setDataSource' in target:
                        if self.fail=='data':raise Fault('Exception')
                        if self.fail=='fatal':raise Fault('Error')
                    elif '->getFrameAtTime' in target:
                        if self.fail=='frame':raise Fault('Exception')
                        result=0 if self.null else self.frame
                    elif '->releaseQuietly' in target:self.call('releaseQuietly(Landroid/media/MediaMetadataRetriever;)V',vals)
                    elif '->release()V' in target:
                        self.released+=1
                        if self.fail=='release':raise Fault('Exception')
                    else:raise ValueError(target)
                elif op=='move-result-object':r[rest]=result
                elif op=='move-exception':r[rest]=pending
                elif op=='if-eqz':
                    if not r[parts[0]]:pc=labels[parts[1]]
                elif op=='return-object':return r[rest]
                elif op=='return-void':return None
                elif op=='throw':raise r[rest]
                else:raise ValueError(line)
            except Fault as fault:
                target=next((t for kind,start,end,t in traps if start<=origin<end and (kind is None or fault.kind=='Exception')),None)
                if target is None:raise
                pending=fault;pc=target
        raise ValueError('Missing return')
def test(path):
    rows=[]
    for fail,null in [('',False),('',True),('data',False),('frame',False),('release',False),('fatal',False),('constructor',False)]:
        vm=VM(path,fail,null);thrown=''
        try:result=vm.call('read(Ljava/lang/String;)Landroid/graphics/Bitmap;',['test.mp4'])
        except Fault as error:thrown=error.kind;result=None
        assert vm.released==(0 if fail=='constructor' else 1),(fail,vm.released)
        assert thrown==('Error' if fail=='fatal' else 'Exception' if fail=='constructor' else ''),(fail,thrown)
        if fail in ('','release'):assert result==(0 if null else vm.frame)
        if fail in ('data','frame'):assert result==0
        rows.append(dict(failure=fail or 'none',null_frame=null,releases=vm.released,propagated=thrown,passed=True))
    return rows
if __name__=='__main__':
    path=Path(sys.argv[1]) if len(sys.argv)>1 else OUT/'modules/VideoThumbnail.smali'
    rows=test(path);print('7 retriever cleanup branch cases passed for '+str(path))
    if len(sys.argv)>2:(OUT/sys.argv[2]).write_text(json.dumps(rows,indent=2),encoding='utf-8')
