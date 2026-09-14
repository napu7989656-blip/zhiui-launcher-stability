"""r8b: read only two proven local-cache subtitles after the accepted cache commit."""
import json,shutil,difflib
from pathlib import Path
from stability_base10_tile_patch_20260909 import OUT
SRC=OUT/'worktrees/base10_tile_reads_r8';DST=OUT/'worktrees/base10_tile_subtitles_r8b'
T='Lcom/byd/launcher/stability/TileState;'
EXTRA=f'''
.method public static subtitle(Lo/ff;Lo/df;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    iget-object v0, p1, Lo/df;->ʹ:Lo/bf;
    instance-of v1, v0, Lo/ke;
    if-eqz v1, :original
    check-cast v0, Lo/ke;
    iget-object v1, v0, Lo/ke;->ˏ:Lo/ff;
    if-ne p0, v1, :original
    iget v1, v0, Lo/ke;->ˋ:I
    const/4 v2, 0x4
    if-eq v1, v2, :cached
    const/4 v2, 0x7
    if-ne v1, v2, :original
    :cached
    invoke-virtual {{v0}}, Lo/ke;->ˏ()Ljava/lang/String;
    move-result-object v0
    return-object v0
    :original
    return-object p2
.end method
'''
def main():
    assert not DST.exists()
    shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
    p=DST/'smali/com/byd/launcher/stability/TileState.smali';p.write_text(p.read_text(encoding='utf-8')+EXTRA,encoding='utf-8')
    p=DST/'smali/o/fe.smali';text=p.read_text(encoding='utf-8');before=f'    invoke-static {{v4, v3, v2}}, {T}->commit(Lo/ff;Lo/df;Z)V'
    after=before+f'\n    invoke-static {{v4, v3, v1}}, {T}->subtitle(Lo/ff;Lo/df;Ljava/lang/String;)Ljava/lang/String;\n    move-result-object v1'
    assert text.count(before)==1;p.write_text(text.replace(before,after),encoding='utf-8')
    changes=['smali/com/byd/launcher/stability/TileState.smali','smali/o/fe.smali']
    (OUT/'base10_r8b_changes.json').write_text(json.dumps(changes,indent=2),encoding='utf-8')
    (OUT/'base10_r8b_subtitle_manifest.json').write_text(json.dumps(dict(before=before,after=after,extra=EXTRA),indent=2),encoding='utf-8')
    patch=''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True),(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r8/'+r,tofile='r8b/'+r)) for r in changes)
    (OUT/'base10_r8b.patch').write_text(patch,encoding='utf-8')
    print('r8b draft: cache-only energy/SOC subtitles refreshed in accepted main callback.')
if __name__=='__main__':main()
