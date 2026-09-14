"""Check opcode-width equivalence without ignoring targets or conditional jumps."""
import json
from stability_verify_patch_20260906 import norm,OUT
class TextFile:
 def __init__(self,text):self.text=text
 def exists(self):return True
 def read_text(self,**kwargs):return self.text
base=".class public LX;\n.super Ljava/lang/Object;\n.method public static run()V\n.locals 1\nconst/4 v0, 0x0\ngoto :a\n:a\nconst/4 v0, 0x1\n:b\nreturn-void\n.end method\n"
n=lambda s:norm(TextFile(s))
assert n(base)==n(base.replace('goto :a','goto/16 :a'))
assert n(base)==n(base.replace('goto :a','goto/32 :a'))
assert n(base)!=n(base.replace('goto :a','goto/16 :b'))
assert n(base)!=n(base.replace('goto :a','if-eqz v0, :a'))
assert n(base)!=n(base.replace('const/4 v0, 0x1','const/4 v0, 0x2'))
(OUT/'goto_width_normalizer_20260911.json').write_text(json.dumps(dict(passed=5,scope='Two equivalent widths, changed target, conditional instruction, changed value. No APK mutation.')),encoding='utf-8')
print('PASS 5 goto-width verifier regressions')
