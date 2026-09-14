import argparse,json
from stability_base10_media_uri_patch_20260913 import ROOT,OUT,SRC,DST,MOD,A
from test_base10_media_artwork_20260912 import ArtworkVM,check as inherited,H
from test_base09_smali_20260908 import Obj
from stability_verify_patch_20260906 import norm
R='Lcom/byd/launcher/stability/MediaUriReader;'
def check(tree):
 vm=ArtworkVM(tree);m,h=vm.setup_art();context=Obj('application_context');m.f[A+'->ˋ:Landroid/content/Context;']=context
 calls=[];original=vm.extra_call
 def call(target,args):
  if target.startswith(R+'->load('):calls.append(args);return Obj('decoded')
  return original(target,args)
 vm.extra_call=call
 request=Obj('request')
 got=vm.execute(H,'load(Ljava/lang/String;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Ljava/lang/Object;',[h,'content://cover',request])
 assert got.kind=='decoded' and calls==[[context,'content://cover',request]]
 calls.clear();got=vm.execute(A,'ʹ(Ljava/lang/String;)Landroid/graphics/Bitmap;',[m,'file:///cover'])
 assert got.kind=='decoded' and calls==[[context,'file:///cover',0]]
 body=vm.life.body(A,'ʹ(Ljava/lang/String;)Landroid/graphics/Bitmap;')
 assert all(s not in body for s in ('->Ώ:','->ΐ:','decodeStream','decodeFile','HttpURLConnection'))
 pipeline=(tree/'smali/com/byd/launcher/stability/MediaArtworkPipeline.smali').read_text(encoding='utf-8')
 assert pipeline.count('->load(Ljava/lang/String;Lcom/byd/launcher/stability/MediaArtworkWork$Request;)Ljava/lang/Object;')==2
 assert '->load(Ljava/lang/String;)Ljava/lang/Object;' not in pipeline
 return dict(cases=['actual_request_aware_host_uses_application_context','legacy_entry_uses_bounded_reader','no_background_URI_cache_or_unbounded_decode','both_snapshot_URI_sources_forward_request'],inherited=inherited(tree),limits='4 actual bridge/structure groups plus inherited 367; production IO 133 and Android bridge 32 JVM assertions are separate, not ART. External provider/native latency remains unpreemptible.')
def main():
 p=argparse.ArgumentParser();p.add_argument('--final',action='store_true');a=p.parse_args()
 manifest=json.loads((OUT/'base10_r22_uri_manifest.json').read_text(encoding='utf-8'))
 for rel in {r['path'] for r in manifest['edits']}:
  s=(DST/rel).read_text(encoding='utf-8')
  for edit in reversed(manifest['edits']):
   if edit['path']==rel:assert s.count(edit['after'])==1;s=s.replace(edit['after'],edit['before'])
  assert s==(SRC/rel).read_text(encoding='utf-8')
 for rel in manifest['added']:assert not (SRC/rel).exists()
 rows=[check(DST)]
 if a.final:
  final=OUT/'final_redecode/base10_r22'
  for rel in json.loads((OUT/'base10_r22_changes.json').read_text()):assert norm(DST/rel)==norm(final/rel),rel
  rows.append(check(final))
 (OUT/('base10_r22_branch_tests'+('_final' if a.final else '')+'.json')).write_text(json.dumps(dict(artifacts=rows,exact_inverse=True),indent=2),encoding='utf-8')
 print('PASS 4 URI bridge groups +367 inherited; exact inverse to R21; source/final artifacts:',len(rows))
if __name__=='__main__':main()
