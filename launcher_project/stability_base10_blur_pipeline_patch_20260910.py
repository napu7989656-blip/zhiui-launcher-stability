"""Integrate bounded blur ownership around the existing h2 algorithm and a8 UI."""
import json,shutil,difflib
from pathlib import Path
from stability_local_audit_20260905 import methods
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
SRC=OUT/'worktrees/base10_bitmap_alias_r14';DST=OUT/'worktrees/base10_blur_pipeline_r15'
P='Lcom/byd/launcher/stability/BlurPipeline;';M='Lcom/byd/launcher/MainActivity;'
def main():
 assert (OUT/'base10_r14_manual_audit.json').exists() and not DST.exists()
 shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
 records=[]
 def change(rel,before,after):
  p=DST/rel;text=p.read_text(encoding='utf-8');assert text.count(before)==1,(rel,before[:70]);assert before!=after
  p.write_text(text.replace(before,after),encoding='utf-8');records.append(dict(path=rel,before=before,after=after))
 def edit(rel,sig,fn):
  before=next(b for s,(b,_) in methods(DST/rel).items() if s.split()[-1]==sig);change(rel,before,fn(before))
 mainrel='smali/com/byd/launcher/MainActivity.smali'
 change(mainrel,'# instance fields','# instance fields\n.field public final stabilityBlur:'+P)
 init='''    new-instance v0, Lcom/byd/launcher/stability/MainBlurHost;
    invoke-direct {v0, p0}, Lcom/byd/launcher/stability/MainBlurHost;-><init>(Lcom/byd/launcher/MainActivity;)V
    new-instance v1, '''+P+'''
    invoke-direct {v1, v0}, '''+P+'''-><init>(Lcom/byd/launcher/stability/BlurPipeline$Host;)V
    iput-object v1, p0, '''+M+'->stabilityBlur:'+P+'\n'
 edit(mainrel,'<init>()V',lambda b:b.replace('    return-void',init+'    return-void',1))
 edit(mainrel,'onDestroy()V',lambda b:b.replace('    .locals 3','    .locals 3\n    iget-object v0, p0, '+M+'->stabilityBlur:'+P+'\n    invoke-virtual {v0}, '+P+'->close()V',1))
 def guard(b):
  index=b.index('\n',b.index('.locals'))
  return b[:index]+'''\n    iget-object v0, p0, '''+M+'->stabilityBlur:'+P+'''
    invoke-virtual {v0}, '''+P+'''->current()Z
    move-result v0
    if-nez v0, :blur_owner_alive
    return-void
    :blur_owner_alive
'''+b[index:]
 def schedule(b):
  b=guard(b);old='    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z';assert b.count(old)==1
  return b.replace(old,'    iget-object v0, p0, '+M+'->stabilityBlur:'+P+'\n    invoke-virtual {v0, v1}, '+P+'->schedule(Ljava/lang/Runnable;)V')
 edit(mainrel,'ͷ()V',schedule)
 def start(b):
  b=guard(b);b=b.replace('    new-instance v2, Ljava/lang/Thread;','    iget-object v2, p0, '+M+'->stabilityBlur:'+P,1)
  begin=b.index('    const-string v0, "BarBlur"');end=b.index('    return-void',begin)
  return b[:begin]+'    invoke-virtual {v2, v3}, '+P+'->execute(Ljava/lang/Runnable;)Z\n\n'+b[end:]
 edit(mainrel,'Ί()V',start)
 def algorithm(b):
  start=b.index('    :pswitch_7\n');end=b.index('    :pswitch_8\n',start);part=b[start:end]
  part=part.replace('    :pswitch_7\n','''    :pswitch_7
    invoke-static {}, '''+P+'''->workerCurrent()Z
    move-result v0
    if-nez v0, :blur_worker_alive
    return-void
    :blur_worker_alive
''',1)
  old='    iput-object v11, v8, '+M+'->Κ:Landroid/graphics/Bitmap;';assert part.count(old)==1
  part=part.replace(old,'    invoke-static {v11}, '+P+'->source(Ljava/lang/Object;)V')
  # Observe exactly the three original successful crop returns without altering math.
  needle='Lo/a2;->ˏ(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;'
  at=0
  for reg,fn in [('v0','unused'),('v4','retain'),('v1','retain')]:
   at=part.index(needle,at)+len(needle);pos=part.index('    move-result-object '+reg,at)+len('    move-result-object '+reg)
   part=part[:pos]+'\n    invoke-static {'+reg+'}, '+P+'->'+fn+'(Ljava/lang/Object;)V'+part[pos:]
  needle='Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;'
  at=part.index(needle)+len(needle);pos=part.index('    move-result-object v1',at)+len('    move-result-object v1')
  part=part[:pos]+'\n    invoke-static {v1}, '+P+'->retain(Ljava/lang/Object;)V'+part[pos:]
  old='    sput-object v2, Lo/ak;->ͺ:Landroid/graphics/Bitmap;';assert part.count(old)==1
  part=part.replace(old,'    invoke-static {v2}, '+P+'->blurred(Ljava/lang/Object;)V')
  old='    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z';assert part.count(old)==1
  part=part.replace(old,'    invoke-static {v2}, '+P+'->publish(Ljava/lang/Runnable;)V')
  begin=part.index('    :goto_10\n')+len('    :goto_10\n');end=part.index('    :try_end_4',begin)
  part=part[:begin]+'''    new-instance v1, Lo/y7;
    const/16 v4, 0xe
    invoke-direct {v1, v8, v4}, Lo/y7;-><init>(Lcom/byd/launcher/MainActivity;I)V
    invoke-static {v1, v2, v3}, '''+P+'''->retry(Ljava/lang/Runnable;J)V
'''+part[end:]
  return b[:start]+part+b[b.index('    :pswitch_8\n',start):]
 edit('smali/o/h2.smali','run()V',algorithm)
 def apply(b):
  guard='''    invoke-static {}, '''+P+'''->deliveryCurrent()Z
    move-result v0
    if-nez v0, :blur_delivery_alive
    return-void
    :blur_delivery_alive
'''
  b=b.replace('    .locals 8','    .locals 8\n'+guard,1)
  old='    invoke-virtual {v5, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z';assert b.count(old)==1
  b=b.replace(old,'    const/4 v7, 0x0\n    invoke-static {v5, v6, v7}, '+P+'->postChild(Ljava/lang/Object;Ljava/lang/Runnable;I)Z')
  old='    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z';assert b.count(old)==2
  b=b.replace(old,'    const/4 v5, 0x1\n    invoke-static {v0, v1, v5}, '+P+'->postChild(Ljava/lang/Object;Ljava/lang/Runnable;I)Z',1)
  b=b.replace(old,'    const/4 v3, 0x2\n    invoke-static {v0, v1, v3}, '+P+'->postChild(Ljava/lang/Object;Ljava/lang/Runnable;I)Z',1)
  return b
 edit('smali/o/a8.smali','run()V',apply)
 new=[]
 for p in (OUT/'modules/blur_pipeline_prod_r1/decoded/smali/com/byd/launcher/stability').glob('*.smali'):
  rel='smali/com/byd/launcher/stability/'+p.name;assert not (DST/rel).exists();shutil.copy2(p,DST/rel);new.append(rel)
 rel='smali/com/byd/launcher/stability/MainBlurHost.smali';shutil.copy2(ROOT/'stability_modules/bridge/MainBlurHost.smali',DST/rel);new.append(rel)
 changes=sorted({r['path'] for r in records}|set(new))
 for name,obj in [('changes',changes),('blur_pipeline_manifest',records),('draft_status',dict(status='DRAFT_NOT_BUILT',remaining=['bridge behavior tests','production+smali integration','final gates','partial crop-allocation cleanup','complete P1/P2/P3 plan']))]:
  (OUT/('base10_r15_'+name+'.json')).write_text(json.dumps(obj,ensure_ascii=False,indent=2),encoding='utf-8')
 patch=''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True) if (SRC/r).exists() else [],(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r14/'+r,tofile='r15/'+r)) for r in changes)
 (OUT/'base10_r15.patch').write_text(patch,encoding='utf-8');print('R15 bridge and pipeline draft integrated:',len(changes),'files; not built or fully tested.')
if __name__=='__main__':main()
