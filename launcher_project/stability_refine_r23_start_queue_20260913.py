from stability_base10_media_lifetime_patch_20260913 import ROOT,OUT,SRC,DST
import shutil,json,difflib
backup=OUT/'base10_r23_draft_before_start_queue';assert not backup.exists();backup.mkdir()
changed=['smali/o/llI.smali','smali/o/a9.smali']
for rel in changed:shutil.copy2(DST/rel,backup/(rel.rsplit('/',1)[-1]))
p=DST/changed[0];s=p.read_text(encoding='utf-8');at=s.index('    :art_new_manager');before=s[:at];tail=s[at:]
old='    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->Ͷ:Landroid/os/Handler;'
assert tail.count(old)>=1
tail=tail.replace(old,'''    iget-object v2, v0, Lcom/byd/launcher/NavBarService;->ͼ:Lo/a9;
    iget-object v2, v2, Lo/a9;->ˏ:Landroid/os/Handler;''',1);p.write_text(before+tail,encoding='utf-8')
p=DST/changed[1];s=p.read_text(encoding='utf-8');at=s.index('.method public stabilityStart()V');before=s[:at];tail=s[at:]
old='    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z';assert tail.count(old)==1
tail=tail.replace(old,old+'''\n    move-result v6
    if-nez v6, :media_poll_posted
    const/4 v6, 0x0
    iput-boolean v6, p0, Lo/a9;->stabilityStarted:Z
    :media_poll_posted''');p.write_text(before+tail,encoding='utf-8')
mp=OUT/'base10_r23_lifetime_manifest.json';shutil.copy2(mp,backup/mp.name);r=json.loads(mp.read_text(encoding='utf-8'));r['edits']=[x for x in r['edits'] if x['path'] not in changed]+[dict(path=rel,before=(SRC/rel).read_text(encoding='utf-8'),after=(DST/rel).read_text(encoding='utf-8')) for rel in changed];mp.write_text(json.dumps(r,ensure_ascii=False,indent=2),encoding='utf-8')
patch=OUT/'base10_r23.patch';shutil.copy2(patch,backup/patch.name);changes=json.loads((OUT/'base10_r23_changes.json').read_text());patch.write_text(''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True) if (SRC/r).exists() else [],(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r22/'+r,tofile='r23/'+r)) for r in changes),encoding='utf-8')
print('Startup task now queued on manager Handler so disposal removes it; rejected poll post permits retry.')
