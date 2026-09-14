import subprocess,json,re
from stability_base10_glass_patch_20260910 import OUT,DST,SRC
from stability_verify_patch_20260906 import norm
from stability_local_audit_20260905 import methods
root=OUT/'modules/glass_queue_r1';assert not root.exists();root.mkdir()
body=next(b for s,(b,_) in methods(DST/'smali/o/ff.smali').items() if s.split()[-1]=='ˋ(Landroid/view/View;)V')
key=int(re.search(r'const/16 v0, (0x\w+)\s+new-instance v2, Lo/x9;',body)[1],0)
for name in ['QuickSettingsReadExecutor','QuickSettingsReadExecutor$Read','QuickSettingsReadExecutor$1','TileSlot','TileSlot$Ticket','TileSlot$Pending','TileSlot$Queue']:
    rel='smali/com/byd/launcher/stability/'+name+'.smali';assert norm(SRC/rel)==norm(DST/rel)
cp=';'.join(str(OUT/p) for p in ['modules/quick_read_executor_r2/tests','modules/quick_read_executor_r2/classes','modules/quick_handler_r1/api','modules/tile_slots_r1/classes'])
with (root/'compile.txt').open('x',encoding='utf-8') as log:subprocess.run(['D:/Android/.jdk21/bin/javac.exe','--release','8','-encoding','UTF-8','-cp',cp,'-d',str(root),'D:/apk/launcher_project/stability_modules/test/GlassQueueTest.java'],stdout=log,stderr=subprocess.STDOUT,check=True)
p=subprocess.run(['D:/Android/.jdk21/bin/java.exe','-cp',str(root)+';'+cp,'GlassQueueTest',str(key)],capture_output=True,text=True)
(root/'run.txt').write_text(p.stdout+p.stderr,encoding='utf-8');assert p.returncode==0,p.stderr
(root/'result.json').write_text(json.dumps(dict(key=key,output=p.stdout.strip(),production_smali_unchanged=True),indent=2),encoding='utf-8');print(p.stdout)
