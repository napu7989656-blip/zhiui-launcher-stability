import json,importlib.util
from unittest.mock import patch
from pathlib import Path
import stability_verify_patch_20260906 as verifier
ROOT=Path('D:/apk/launcher_project');OUT=verifier.OUT;T=OUT/'catch_alias_regression_r23';assert not T.exists();T.mkdir()
class TextFile:
 def __init__(self,text):self.text=text
 def exists(self):return True
 def read_text(self,**kwargs):return self.text
s='''.class public LX;
.super Ljava/lang/Object;
.method public static run()V
.locals 1
:start
invoke-static {}, LX;->f()V
if-nez v0, :alias
:end
:alias
.catch Ljava/lang/RuntimeException; {:start .. :end} :failure
.catchall {:start .. :end} :fatal
return-void
:failure
move-exception v0
return-void
:fatal
move-exception v0
throw v0
.end method
'''
t=s.replace(':end\n:alias\n.catch',':end\n.catch').replace(' :fatal\nreturn-void',' :fatal\n:alias\nreturn-void')
n=lambda x:verifier.norm(TextFile(x))
assert n(s)==n(t)
for changed in [t.replace('{:start .. :end}','{:start .. :alias}'),t.replace(':alias','unused_alias')]:
 # The first mutation names the same address and must remain equivalent.
 if changed.startswith('.class') and '{:start .. :alias}' in changed:assert n(s)==n(changed)
assert n(s)!=n(t.replace('{:start .. :end}','{:start .. :failure}'))
assert n(s)!=n(t.replace('RuntimeException','Exception'))
assert n(s)!=n(t.replace('} :failure','} :fatal'))
assert n(s)!=n(t.replace('invoke-static {}, LX;->f()V','invoke-static {}, LX;->g()V'))
lines=t.splitlines();a=next(i for i,x in enumerate(lines) if x.startswith('.catch '));lines[a],lines[a+1]=lines[a+1],lines[a];assert n(s)!=n('\n'.join(lines))
spec=importlib.util.spec_from_file_location('old_verifier',OUT/'tool_archive_before_r23/stability_verify_patch_20260906.py');old=importlib.util.module_from_spec(spec);spec.loader.exec_module(old)
assert old.norm(TextFile(s))!=old.norm(TextFile(t))
with patch.object(verifier,'OUT',T):
 scope={};exec((ROOT/'test_goto_width_normalizer_20260911.py').read_text(encoding='utf-8'),scope)
 code=(ROOT/'test_switch_payload_normalizer_20260911.py').read_text(encoding='utf-8').replace('from test_goto_width_normalizer_20260911 import TextFile','')
 exec(code,dict(TextFile=TextFile))
(T/'result.json').write_text(json.dumps(dict(catch_assertions=7,old_false_difference_reproduced=True,goto_cases=5,switch_cases=6,preserves='catch ranges/types/target/order; control instructions and switch payload ordering'),indent=2),encoding='utf-8')
print('PASS catch alias equivalence and five negative controls; preserved goto5 and switch6 regressions.')
