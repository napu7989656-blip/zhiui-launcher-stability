from stability_base10_media_lifetime_patch_20260913 import ROOT,OUT,SRC,DST
import shutil,json,difflib
backup=OUT/'base10_r23_draft_before_review';assert not backup.exists();backup.mkdir()
rel='smali/o/a9.smali';p=DST/rel;shutil.copy2(p,backup/'a9.smali');s=p.read_text(encoding='utf-8')
old='''    :try_detach
    invoke-virtual {p0}, Lo/a9;->ˏ()V
    :end_detach'''
new='''    iget-object v2, p0, Lo/a9;->ͳ:Landroid/media/session/MediaController;
    iget-object v3, p0, Lo/a9;->ͼ:Lo/y8;
    iput-object v1, p0, Lo/a9;->ͳ:Landroid/media/session/MediaController;
    iput-object v1, p0, Lo/a9;->ͼ:Lo/y8;
    iput-object v1, p0, Lo/a9;->stabilitySessionToken:Ljava/lang/Object;
    if-eqz v2, :after_detach
    if-eqz v3, :after_detach
    :try_detach
    invoke-virtual {v2, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :end_detach'''
assert s.count(old)==1;s=s.replace(old,new)
start=s.index('.method public stabilityStart()V');prefix=s[:start];b=s[start:]
# Keep an already acquired manager and skip registration if already registered.
old='    :try_start_2\n';assert b.count(old)==1
b=b.replace(old,old+'''    iget-object v5, p0, Lo/a9;->Ͳ:Landroid/media/session/MediaSessionManager;
    if-nez v5, :cond_9
''')
old='    :try_start_3\n';assert b.count(old)==1
b=b.replace(old,old+'''    iget-boolean v6, p0, Lo/a9;->ͻ:Z
    if-nez v6, :catch_1
''')
# On failed startup allow an explicit later retry, without resetting destroyed.
old='    const-string v0, "MediaSessionManager not available"';assert b.count(old)==1
b=b.replace(old,'''    const/4 v6, 0x0
    iput-boolean v6, p0, Lo/a9;->stabilityStarted:Z
'''+old)
old='    :catch_2\n    move-exception v0';assert b.count(old)==1
b=b.replace(old,old+'''\n    const/4 v6, 0x0
    iput-boolean v6, p0, Lo/a9;->stabilityStarted:Z''')
p.write_text(prefix+b,encoding='utf-8')
# Recreate exact parent manifest for this explicitly archived draft revision.
mp=OUT/'base10_r23_lifetime_manifest.json';shutil.copy2(mp,backup/mp.name)
r=json.loads(mp.read_text(encoding='utf-8'));edits=[x for x in r['edits'] if x['path']!=rel]
edits.append(dict(path=rel,before=(SRC/rel).read_text(encoding='utf-8'),after=p.read_text(encoding='utf-8')));r['edits']=edits
mp.write_text(json.dumps(r,ensure_ascii=False,indent=2),encoding='utf-8')
changes=json.loads((OUT/'base10_r23_changes.json').read_text());patch=OUT/'base10_r23.patch';shutil.copy2(patch,backup/patch.name)
patch.write_text(''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True) if (SRC/r).exists() else [],(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r22/'+r,tofile='r23/'+r)) for r in changes),encoding='utf-8')
print('Draft reviewed: isolated controller cleanup; startup failure allows retry; no duplicate registered listener.')
