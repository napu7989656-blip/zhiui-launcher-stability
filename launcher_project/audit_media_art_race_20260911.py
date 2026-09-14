import json,hashlib
from pathlib import Path
from test_base10_nav_smali_20260908 import NavVM
from test_base09_smali_20260908 import Obj
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1');TREE=OUT/'worktrees/base10_home_receiver_r19'
A='Lo/a9;';W='Lo/w8;'
class MediaVM(NavVM):
 def __init__(self):super().__init__(TREE);self.extra_call=self.extra;self.scaled=Obj('old_scaled')
 def extra(self,target,args):
  cls,sig=target.split('->')
  if cls==W:return self.execute(cls,sig,args)
  if target==A+'->ͻ(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;':return self.scaled
  if target=='Ljava/lang/Object;->getClass()Ljava/lang/Class;':return Obj('class')
  raise AssertionError(target)
vm=MediaVM();manager=Obj(A);manager.f[A+'->ˏ:Landroid/os/Handler;']=Obj('handler')
old=Obj(W);vm.execute(W,'<init>(Landroid/graphics/Bitmap;Lo/a9;Ljava/lang/String;Ljava/lang/String;)V',[old,Obj('old_source'),manager,'old_title','old_artist'])
# Execute the actual direct-small-bitmap branch after its size checks selected it.
b=vm.life.body(A,'Ͱ(Landroid/media/MediaMetadata;)V');start=b.index('    iput-object v0, v7, Lo/a9;->ͽ:Landroid/graphics/Bitmap;');end=b.index('    goto :goto_11',start)
new=Obj('new_small_art');vm.execute(A,'Ͱ(Landroid/media/MediaMetadata;)V',[manager,Obj('metadata')],body=b[start:end]+'    return-void\n',initial={'v0':new,'v7':manager,'v4':'new_title','v12':'new_artist','v8':manager.f[A+'->ˏ:Landroid/os/Handler;']})
assert manager.f[A+'->ͽ:Landroid/graphics/Bitmap;'] is new
assert len(vm.posts)==1
# The old task can ignore/finish after cancellation; actual worker overwrites cache.
vm.execute(W,'run()V',[old]);assert manager.f[A+'->ͽ:Landroid/graphics/Bitmap;'] is vm.scaled
assert len(vm.posts)==2
queued=vm.posts[-1][1];assert queued.f[W+'->ͳ:Ljava/lang/String;']=='old_title'
files=['smali/o/a9.smali','smali/o/v8.smali','smali/o/w8.smali','smali/o/sj.smali']
(OUT/'media_art_race_r19_20260911.json').write_text(json.dumps(dict(reproduced=True,sequence=['old scale task created','new direct bitmap branch commits/posts','old actual worker commits/posts afterward'],worker_selector=1,source_hashes={n:hashlib.sha256((TREE/n).read_bytes()).hexdigest() for n in files},limits='Actual direct branch and actual w8 worker/constructor executed; bitmap scaling and Android Handler doubled. Size branch selected explicitly. No media controls, ART or vehicle.')),encoding='utf-8')
print('REPRODUCED: old media-art worker overwrites newer direct art and queues old title.')
