import json
from stability_verify_patch_20260906 import norm,OUT
from test_goto_width_normalizer_20260911 import TextFile
s='.class public LX;\n.super Ljava/lang/Object;\n.method public static f(I)I\n.locals 1\npacked-switch p0, :data\nconst/4 v0, 0x0\nreturn v0\n:a\nconst/4 v0, 0x1\nreturn v0\n:b\nconst/4 v0, 0x2\nreturn v0\n:data\n.packed-switch 0x0\n:a\n:b\n.end packed-switch\n.end method\n'
n=lambda x:norm(TextFile(x))
assert n(s)!=n(s.replace('.packed-switch 0x0\n:a\n:b','.packed-switch 0x0\n:b\n:a'))
assert n(s)!=n(s.replace('.packed-switch 0x0\n:a\n:b','.packed-switch 0x0\n:a\n:a'))
assert n(s)!=n(s.replace('.packed-switch 0x0','.packed-switch 0x1'))
assert n(s)!=n(s.replace('.packed-switch 0x0\n:a\n:b','.packed-switch 0x0\n:a'))
assert n(s)==n(s.replace(':a',':first').replace(':b',':second').replace(':data',':table'))
assert n(s)==n(s.replace(':a\nconst/4',':a\n:alias\nconst/4'))
(OUT/'switch_payload_normalizer_20260911.json').write_text(json.dumps(dict(passed=6,parent_bug_reproduced=True,scope='Permutation, duplicate, start key, length changes rejected; label renaming and same-address alias accepted.')),encoding='utf-8')
print('PASS 6 packed-switch normalizer regressions')
