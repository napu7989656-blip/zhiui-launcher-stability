"""Execute the shipped result-dispatch smali with recording Android doubles.
This is branch/lifecycle-order evidence, not ART verification or native decoding.
"""
import argparse,json,re
from test_base01_smali_20260905 import Obj,OUT,AK,MAIN,run_case
from test_base02_smali_20260906 import dispose,cases as old_cases
from stability_local_audit_20260905 import methods
HELPER='Lcom/byd/launcher/stability/WallpaperFrameApply;'
SIG='submit(Lo/ak;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V'
INIT='<init>(Lo/ak;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V'
KEY=0x7f08032e
def field(o,n,v):o.fields[o.kind+'->'+n]=v
def weak(v):return Obj('Ljava/lang/ref/WeakReference;',value=v)

class VM:
    def __init__(self,tree):self.tree=tree;self.static={};self.queue=[];self.calls=[];self.after_post=None
    def execute(self,owner,sig,args):
        p=self.tree/('smali/'+owner[1:-1]+'.smali')
        body=next(v[0] for k,v in methods(p).items() if k.split()[-1]==sig)
        ls=[l.strip() for l in body.splitlines() if l.strip() and not l.strip().startswith(('#','.line '))]
        labels={}
        for i,l in enumerate(ls):
            if l.startswith(':'):labels.setdefault(l,i) # payload target references are not definitions
        r={f'p{i}':v for i,v in enumerate(args)};pc=0;result=None;steps=0
        while pc<len(ls):
            l=ls[pc];pc+=1;steps+=1;assert steps<5000,'runaway interpreter'
            if l.startswith(('.',':')):continue
            op,_,rest=l.partition(' ');ps=rest.split(', ')
            if op=='const-string':r[ps[0]]=json.loads(rest.split(', ',1)[1])
            elif op.startswith('const'):r[ps[0]]=int(ps[1],0)
            elif op=='new-instance':r[ps[0]]=Obj(ps[1])
            elif op.startswith('iget'):r[ps[0]]=r[ps[1]].fields.get(ps[2],0)
            elif op.startswith('iput'):r[ps[1]].fields[ps[2]]=r[ps[0]]
            elif op.startswith('sget'):r[ps[0]]=self.static.get(ps[1],0)
            elif op.startswith('sput'):self.static[ps[1]]=r[ps[0]]
            elif op=='check-cast':
                if r[ps[0]]:assert r[ps[0]].kind==ps[1],l
            elif op=='array-length':r[ps[0]]=len(r[ps[1]])
            elif op=='aput-object':r[ps[1]][r[ps[2]]]=r[ps[0]]
            elif op=='rem-int/2addr':r[ps[0]]%=r[ps[1]]
            elif op.startswith('move-result'):r[rest]=result
            elif op in ('move','move-object'):r[ps[0]]=r[ps[1]]
            elif op.startswith('if-'):
                a=r[ps[0]];b=0 if op.endswith('z') else r[ps[1]]
                if op in ('if-eq','if-eqz'):test=a==b
                elif op in ('if-ne','if-nez'):test=a!=b
                elif op in ('if-ge','if-gez'):test=a>=b
                elif op in ('if-lt','if-ltz'):test=a<b
                else:raise ValueError(l)
                if test:pc=labels[ps[-1]]
            elif op.startswith('goto'):pc=labels[rest]
            elif op=='packed-switch':
                start=labels[ps[1]]+1;assert ls[start].startswith('.packed-switch ')
                idx=r[ps[0]]-int(ls[start].split()[-1],0);targets=[];i=start+1
                while ls[i]!='.end packed-switch':targets.append(ls[i]);i+=1
                if 0<=idx<len(targets):pc=labels[targets[idx]]
            elif op.startswith('invoke'):
                regs,target=re.fullmatch(r'\{([^}]*)\}, (.+)',rest).groups()
                assert '..' not in regs,'Unsupported range call must not be ignored'
                vals=[r[x] for x in regs.split(', ')] if regs else []
                self.calls.append(target);result=self.call(target,vals)
            elif op=='return-void':return
            elif op in ('return','return-object'):return r[rest]
            else:raise ValueError('Unsupported instruction: '+l)
    def call(self,t,v):
        owner,sig=t.split('->')
        if owner==HELPER or (owner==AK and sig.startswith('ˏ(')):return self.execute(owner,sig,v)
        if t=='Ljava/lang/Object;-><init>()V':return
        if t=='Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V':v[0].fields['value']=v[1];return
        if t=='Ljava/lang/ref/Reference;->get()Ljava/lang/Object;':return v[0].fields['value']
        if t=='Landroid/graphics/Bitmap;->isRecycled()Z':return v[0].fields.get('recycled',0)
        if t=='Ljava/lang/String;->equals(Ljava/lang/Object;)Z':return int(v[0]==v[1])
        if t=='Ljava/util/List;->indexOf(Ljava/lang/Object;)I':return v[0].index(v[1]) if v[1] in v[0] else -1
        if t=='Ljava/util/List;->isEmpty()Z':return int(len(v[0])==0)
        if t=='Ljava/util/List;->size()I':return len(v[0])
        if t=='Ljava/util/List;->get(I)Ljava/lang/Object;':return v[0][v[1]]
        if t=='Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;':v[0].fields['entries'][v[1]]=v[2];return
        if t=='Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z':
            if self.after_post:self.after_post()
            self.queue.append(v[1]);return 1
        if t=='Lcom/byd/launcher/stability/WallpaperDelivery;->deliver(Landroid/os/Handler;Ljava/lang/Runnable;)V':
            # Delivery wait/cancellation is tested with actual Java code/threads
            # separately. Here expose the queued result for ownership cases.
            self.queue.append(v[1]);return
        if t=='Landroid/view/View;->getTag(I)Ljava/lang/Object;':return v[0].fields.get('tags',{}).get(v[1],0)
        if t=='Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V':v[0].fields['bitmap']=v[1];return
        if t in ('Landroid/view/View;->setVisibility(I)V','Landroid/widget/ImageView;->setVisibility(I)V'):v[0].fields['visibility']=v[1];return
        if t==AK+'->ͳ(Landroid/graphics/Bitmap;)V':self.static['global_bitmap']=v[0];return
        raise ValueError('Unsupported call '+t)

def fixture(tree):
    vm=VM(tree);a=Obj(AK);cache=Obj('cache',entries={});arr=[0,0]
    for n,v in [('Ͳ:Z',0),('ͱ:Landroid/os/Handler;',Obj('handler')),('ˋ:Ljava/util/List;',['A','B']),('ͳ:Lo/uj;',cache),('ʹ:[Landroid/graphics/Bitmap;',arr),('Ͷ:I',0)]:field(a,n,v)
    vm.static[AK+'->ͼ:Ljava/lang/ref/WeakReference;']=weak(a)
    image=Obj('Landroid/widget/ImageView;',tags={KEY:'A'},ordinary_tag='video_poster')
    bitmap=Obj('Landroid/graphics/Bitmap;');return vm,a,image,bitmap,cache,arr

def case(tree,name):
    vm,a,image,bmp,cache,arr=fixture(tree);key='A'
    if name=='closed_before_submit':field(a,'Ͳ:Z',1)
    if name=='null_bitmap':bmp=0
    vm.execute(HELPER,SIG,[a,key,bmp,image])
    if name in ('closed_before_submit','null_bitmap'):assert not vm.queue;return
    assert len(vm.queue)==1
    task=vm.queue.pop()
    if name=='closed_after_submit':field(a,'Ͳ:Z',1)
    if name=='replaced_adapter':vm.static[AK+'->ͼ:Ljava/lang/ref/WeakReference;']=weak(Obj(AK))
    if name=='collected_owner':task.fields[HELPER+'->owner:Ljava/lang/ref/WeakReference;'].fields['value']=0
    if name=='missing_active':vm.static[AK+'->ͼ:Ljava/lang/ref/WeakReference;']=0
    if name=='recycled_bitmap':bmp.fields['recycled']=1
    if name=='removed_path':field(a,'ˋ:Ljava/util/List;',['C'])
    if name=='rebound_view':image.fields['tags'][KEY]='B'
    if name=='selection_changed':field(a,'Ͷ:I',1)
    if name=='collected_view':task.fields[HELPER+'->view:Ljava/lang/ref/WeakReference;'].fields['value']=0
    if name=='missing_array':field(a,'ʹ:[Landroid/graphics/Bitmap;',0)
    if name=='short_array':field(a,'ʹ:[Landroid/graphics/Bitmap;',[])
    vm.execute(HELPER,'run()V',[task])
    stale=name in ('closed_after_submit','replaced_adapter','collected_owner','missing_active','recycled_bitmap','removed_path')
    if stale:
        assert cache.fields['entries']=={} and 'bitmap' not in image.fields and 'global_bitmap' not in vm.static
    else:
        assert cache.fields['entries']=={'A':bmp}
        if name not in ('missing_array','short_array'):assert arr[0] is bmp
        assert ('global_bitmap' in vm.static)==(name!='selection_changed')
        assert ('bitmap' in image.fields)==(name not in ('rebound_view','collected_view'))
    assert image.fields['ordinary_tag']=='video_poster'

def guards(tree):
    vm,a,image,bmp,cache,arr=fixture(tree);field(a,'Ͳ:Z',1)
    for s,args in [('onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V',[a,0,0]),('Ͳ(I)V',[a,0]),('ˋ(I)Landroid/graphics/Bitmap;',[a,0])]:
        assert not vm.execute(AK,s,args)
    page=Obj(MAIN);field(page,'ͺ:Z',1)
    cb=Obj('Lo/y7;');field(cb,'ͱ:Lcom/byd/launcher/MainActivity;',page)
    vm.execute('Lo/y7;','run()V',[cb])
    assert vm.calls==[],vm.calls
    # Active adapter with an empty dataset must also ignore late bind callbacks.
    field(a,'Ͳ:Z',0);field(a,'ˋ:Ljava/util/List;',[])
    vm.execute(AK,'onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V',[a,0,0])

def parent_failure():
    vm,a,image,bmp,cache,arr=fixture(OUT/'worktrees/base03_retriever_release_r1')
    field(a,'Ͳ:Z',1);image.fields['tags'][KEY]='B'
    task=Obj('Lo/j9;');field(task,'Ͱ:I',1);field(task,'ͱ:Landroid/widget/ImageView;',image);field(task,'Ͳ:Landroid/graphics/Bitmap;',bmp)
    vm.execute('Lo/j9;','run()V',[task])
    assert image.fields.get('bitmap') is bmp,'Baseline no longer reproduces; investigate'

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');p.add_argument('--tag',default='base04_r1');p.add_argument('--work',default='base04_wallpaper_results_r1');args=p.parse_args()
    names=['normal','closed_before_submit','null_bitmap','closed_after_submit','replaced_adapter','collected_owner','missing_active','recycled_bitmap','removed_path','rebound_view','selection_changed','collected_view','missing_array','short_array']
    rows=[];parent_failure()
    roots=[('source',OUT/'worktrees'/args.work)]
    if args.final:roots.append(('final_apk',OUT/'final_redecode'/args.tag))
    for label,tree in roots:
        for name in names:case(tree,name);rows.append(dict(artifact=label,case=name,passed=True))
        guards(tree)
        for c in old_cases:assert run_case(tree,c)
        for cb in [False,True]:dispose(tree,cb)
    (OUT/(args.tag+'_branch_tests'+('_final' if args.final else '')+'.json')).write_text(json.dumps(rows,indent=2),encoding='utf-8')
    print(f'Baseline stale-view write reproduced; {len(names)} result cases + lifecycle/empty-data guards and 8 earlier regressions pass per artifact. Restricted smali execution only.')
