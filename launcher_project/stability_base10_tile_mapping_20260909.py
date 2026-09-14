"""Correct all original mobile getter aliases, retaining the audit-stage evidence."""
import json
from stability_base10_tile_patch_20260909 import DST,OUT
p=DST/'smali/o/ke.smali';text=p.read_text(encoding='utf-8')
before='''    .sparse-switch
        0x2 -> :voice
        0x3 -> :energy
        0x6 -> :soc
        0x8 -> :hdc
    .end sparse-switch'''
after='''    .sparse-switch
        0x1 -> :mobile
        0x2 -> :voice
        0x3 -> :energy
        0x4 -> :mobile
        0x6 -> :soc
        0x7 -> :mobile
        0x8 -> :hdc
        0x9 -> :mobile
    .end sparse-switch'''
assert text.count(before)==1
p.write_text(text.replace(before,after),encoding='utf-8')
(OUT/'base10_r8_mapping_manifest.json').write_text(json.dumps([dict(path='smali/o/ke.smali',before=before,after=after)],indent=2),encoding='utf-8')
print('Mobile read/cache mapping now includes selectors 1,4,7,9 and default, matching original switch.')
