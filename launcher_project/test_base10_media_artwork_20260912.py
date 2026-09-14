import argparse,json,re,inspect,textwrap
from pathlib import Path
from unittest.mock import patch
from stability_base10_media_artwork_patch_20260912 import OUT,SRC,DST,A,P
from test_base10_nav_smali_20260908 import NavVM
from test_base09_smali_20260908 import Obj
from test_base10_media_owner_20260912 import SessionVM,check as inherited
from stability_verify_patch_20260906 import norm
H='Lcom/byd/launcher/stability/MediaArtworkHost;';M='Lcom/byd/launcher/stability/MediaArtworkMetadata;';I=P[:-1]+'$Input;';NAV='Lcom/byd/launcher/NavBarService;'
class JavaString(str):
 def __bool__(self):return True
class MetadataFailure(RuntimeError):pass
# Extend only the test interpreter's branch vocabulary with real > semantics.
ns=dict(NavVM.execute.__globals__);code=textwrap.dedent(inspect.getsource(NavVM.execute)).replace("'if-ge':lambda:x>=y","'if-ge':lambda:x>=y,'if-gt':lambda:x>y")
exec(code,ns);execute=ns['execute']
class ArtworkVM(SessionVM):
 execute=execute
 def __init__(self,tree):super().__init__(tree);self.extra_call=self.artcall;self.pipeline_events=[];self.metadata_fail=False;self.io=[]
 def artcall(self,target,args):
  cls,sig=target.split('->')
  if cls in [H,M,I]:return self.execute(cls,sig,args)
  if cls==A and sig.startswith(('stabilityUpdateArtwork','stabilityCloseArtwork')):return self.execute(cls,sig,args)
  if cls==P:self.pipeline_events.append((sig,args));return
  if cls=='Landroid/media/MediaMetadata;':
   if self.metadata_fail:raise MetadataFailure()
   return args[0].f.get(args[1] if len(args)>1 else 'description',0)
  if cls=='Landroid/media/MediaDescription;':return args[0].f.get('bitmap' if sig.startswith('getIconBitmap') else 'uri',0)
  if target=='Landroid/net/Uri;->toString()Ljava/lang/String;':return JavaString(args[0].f['text'])
  if target=='Ljava/lang/String;->length()I':return len(args[0])
  if target=='Landroid/graphics/Bitmap;->getWidth()I':return args[0].f['width']
  if target=='Landroid/graphics/Bitmap;->getHeight()I':return args[0].f['height']
  if target==A+'->ʹ(Ljava/lang/String;)Landroid/graphics/Bitmap;':self.io.append(args);return Obj('bitmap')
  if target==A+'->ͻ(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;':return args[0]
  if target=='Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V':self.pipeline_events.append(('remove',args));return
  if target=='Ljava/lang/Thread;->sleep(J)V':self.pipeline_events.append(('sleep',args));return
  if target=='Lo/q3;->Ͱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V':self.logs.append(args);return
  return super().extra(target,args)
 def setup_art(self):
  m,y=self.setup_media();m.f[A+'->stabilitySessionToken:Ljava/lang/Object;']=Obj('token');m.f[A+'->stabilityArtwork:'+P]=Obj(P);h=Obj(H);self.execute(H,'<init>('+A+')V',[h,m]);return m,h

def check(tree):
 cases=[]
 for key in ['ALBUM_ART','ART','DISPLAY_ICON']:
  vm=ArtworkVM(tree);metadata=Obj('metadata');bitmap=Obj('bitmap');metadata.f['android.media.metadata.'+key]=bitmap
  got=vm.execute(M,'from(Landroid/media/MediaMetadata;)'+I,[metadata]);assert got.f[I+'->bitmap:Ljava/lang/Object;'] is bitmap and not got.f[I+'->uri:Ljava/lang/String;'];cases.append(key+'_metadata_bitmap')
 for key in ['ALBUM_ART_URI','ART_URI','DISPLAY_ICON_URI']:
  vm=ArtworkVM(tree);metadata=Obj('metadata');metadata.f['android.media.metadata.'+key]=JavaString('content://cover');description=Obj('description');fallback=Obj('bitmap');description.f.update(bitmap=fallback,uri=Obj('uri',text='content://description'));metadata.f['description']=description
  got=vm.execute(M,'from(Landroid/media/MediaMetadata;)'+I,[metadata]);assert got.f[I+'->uri:Ljava/lang/String;']=='content://cover' and got.f[I+'->fallbackBitmap:Ljava/lang/Object;'] is fallback and got.f[I+'->fallbackUri:Ljava/lang/String;']=='content://description';cases.append(key+'_and_description_snapshot')
 vm=ArtworkVM(tree);metadata=Obj('metadata');metadata.f.update({'android.media.metadata.ALBUM_ART_URI':JavaString(''),'android.media.metadata.ART_URI':JavaString('later')})
 got=vm.execute(M,'from(Landroid/media/MediaMetadata;)'+I,[metadata]);assert not got.f[I+'->uri:Ljava/lang/String;'];cases.append('empty_first_URI_preserves_original_null_priority')
 got=vm.execute(M,'from(Landroid/media/MediaMetadata;)'+I,[0]);assert all(not v for v in got.f.values());cases.append('null_metadata_snapshot')
 for state in ['current','old_session','null_session','service_replaced','manager_replaced','destroyed']:
  vm=ArtworkVM(tree);m,h=vm.setup_art();token=m.f[A+'->stabilitySessionToken:Ljava/lang/Object;']
  if state=='old_session':token=Obj('old')
  if state=='null_session':token=0
  if state=='service_replaced':vm.current=Obj(NAV)
  if state=='manager_replaced':vm.current.f[NAV+'->ͼ:'+A]=Obj(A)
  if state=='destroyed':m.f[A+'->ͺ:Z']=1
  assert vm.execute(H,'current(Ljava/lang/Object;)Z',[h,token])==int(state=='current');cases.append(state+'_host_gate')
 vm=ArtworkVM(tree);m,h=vm.setup_art();old=Obj('old');m.f[A+'->ͽ:Landroid/graphics/Bitmap;']=old;new=Obj('new')
 vm.execute(H,'commit(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V',[h,new,'title','artist',0]);assert m.f[A+'->ͽ:Landroid/graphics/Bitmap;'] is old
 vm.execute(H,'commit(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V',[h,new,'title','artist',1]);assert m.f[A+'->ͽ:Landroid/graphics/Bitmap;'] is new and vm.events[-1][2:]==(new,'title','artist')
 m.f[A+'->ͺ:Z']=1;before=list(vm.events);vm.execute(H,'commit(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V',[h,old,'stale','artist',1]);assert m.f[A+'->ͽ:Landroid/graphics/Bitmap;'] is new and vm.events==before;cases.append('paired_commit_placeholder_and_destroyed_owner')
 for width,height,expect in [(256,256,1),(257,256,0),(256,257,0)]:assert vm.execute(H,'small(Ljava/lang/Object;)Z',[h,Obj('bitmap',width=width,height=height)])==expect
 cases.append('direct_bitmap_threshold')
 vm=ArtworkVM(tree);m,h=vm.setup_art();metadata=Obj('metadata');bitmap=Obj('bitmap');metadata.f['android.media.metadata.ART']=bitmap
 vm.execute(A,'stabilityUpdateArtwork(Landroid/media/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)V',[m,metadata,'title','artist']);event=vm.pipeline_events[-1];assert event[0].startswith('update(') and event[1][1] is m.f[A+'->stabilitySessionToken:Ljava/lang/Object;'] and event[1][2].f[I+'->bitmap:Ljava/lang/Object;'] is bitmap and event[1][3:]==['title','artist'];cases.append('update_bridge_captures_input_token_and_text')
 vm.metadata_fail=True
 try:vm.execute(A,'stabilityUpdateArtwork(Landroid/media/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)V',[m,metadata,'bad','artist']);raise AssertionError()
 except MetadataFailure:pass
 b=vm.life.body(A,'stabilityUpdateArtwork(Landroid/media/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)V');c=re.search(r'\.catch Ljava/lang/RuntimeException; \{(:\w+) \.\. (:\w+)\} (:\w+)',b);pos=b.index('->from(');assert b.index('    '+c[1]+'\n')<pos<b.index('    '+c[2]+'\n')
 vm.execute(A,'stabilityUpdateArtwork(Landroid/media/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)V',[m],body=b[b.index('    '+c[3]+'\n'):],initial={'v0':m.f[A+'->stabilityArtwork:'+P]});assert vm.pipeline_events[-1][0]=='invalidate()V' and vm.logs;cases.append('snapshot_failure_invalidates_prior_request')
 vm=ArtworkVM(tree);m,h=vm.setup_art();vm.execute(A,'ˏ()V',[m]);assert vm.pipeline_events[0][0]=='invalidate()V';vm.execute(A,'stabilityCloseArtwork()V',[m]);assert vm.pipeline_events[-1][0]=='close()V';vm.execute(A,'ˋ(Ljava/lang/Runnable;)V',[m,Obj('legacy')]);cases.append('detach_close_and_retired_executor_no_null_submit')
 vm=ArtworkVM(tree);m,h=vm.setup_art();b=vm.life.body(A,'<init>('+NAV+')V');at=b.index('    new-instance v0, '+H);last='    iput-object v0, p0, Lo/a9;->Ͱ:Ljava/util/concurrent/ExecutorService;';end=b.index(last,at)+len(last)
 vm.execute(A,'<init>('+NAV+')V',[m,vm.current],body=b[at:end]);assert m.f[A+'->stabilityArtwork:'+P].kind==P and not m.f[A+'->Ͱ:Ljava/util/concurrent/ExecutorService;'];assert 'newSingleThreadExecutor' not in b;cases.append('actual_constructor_replaces_legacy_pool_with_pipeline')
 b=vm.life.body(NAV,'onDestroy()V');at=b.index('    iput-boolean v0, v1, Lo/a9;->ͺ:Z');last='    invoke-virtual {v1}, Lo/a9;->stabilityCloseArtwork()V';end=b.index(last,at)+len(last)
 vm.execute(NAV,'onDestroy()V',[vm.current],body=b[at:end],initial={'v0':1,'v1':m});assert vm.pipeline_events[-1][0]=='close()V';cases.append('service_destroy_closes_actual_manager_pipeline')
 b=vm.life.body('Lo/llI;','run()V');at=b.index('    iget-object v2, v0, '+NAV+'->ͼ:'+A);end=b.index('    new-instance v2, Lo/a9;',at)
 for previous in [m,0]:
  vm.pipeline_events=[];vm.current.f[NAV+'->ͼ:'+A]=previous;vm.execute('Lo/llI;','run()V',[Obj('task')],body=b[at:end],initial={'v0':vm.current});assert len(vm.pipeline_events)==int(bool(previous))
 cases.append('reconnect_closes_previous_artwork_before_manager_replacement')
 # Existing session tests use a pipeline-null fixture; lifecycle change still executes actual detach.
 inherited_result=inherited(tree)
 return dict(cases=cases,inherited=inherited_result,limits='Actual Android snapshot/Host/update/lifecycle smali with framework/pipeline effects doubled. Pipeline production JVM tested separately with matching class bytes. Metadata original filtering preserved by exact inverse/prefix checks, not complete ART UI execution. URI cleanup still outstanding.')
def main():
 p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args();r=json.loads((OUT/'base10_r21_artwork_manifest.json').read_text(encoding='utf-8'))
 for rel in {x['path'] for x in r['edits']}:
  s=(DST/rel).read_text(encoding='utf-8')
  for x in reversed(r['edits']):
   if x['path']==rel:assert s.count(x['after'])==1;s=s.replace(x['after'],x['before'])
  assert s==(SRC/rel).read_text(encoding='utf-8')
 # Accepted metadata has one new art entry and no legacy constructors/submits/cache writes.
 b=ArtworkVM(DST).life.body(A,'Ͱ(Landroid/media/MediaMetadata;)V');assert b.count('->stabilityUpdateArtwork(')==1
 for forbidden in ['new-instance v8, Lo/sj;','Lo/v8;-><init>','Lo/w8;-><init>','->ˋ(Ljava/lang/Runnable;)','->ͽ:Landroid/graphics/Bitmap;']:assert forbidden not in b
 rows=[check(DST)]
 if a.final:
  final=OUT/'final_redecode/base10_r21'
  for rel in json.loads((OUT/'base10_r21_changes.json').read_text()):assert norm(DST/rel)==norm(final/rel)
  rows.append(check(final))
 (OUT/('base10_r21_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,exact_parent_restoration=True),indent=2),encoding='utf-8')
 print('PASS',len(rows[0]['cases']),'artwork bridge groups +345 inherited')
if __name__=='__main__':main()
