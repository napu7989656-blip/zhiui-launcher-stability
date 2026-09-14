from pathlib import Path
import json,shutil,difflib
from stability_local_audit_20260905 import methods
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
SRC=OUT/'worktrees/base10_media_retry_r24';DST=OUT/'worktrees/base10_camera_preferences_r25'
HELP='Lcom/byd/launcher/stability/CameraPreferences;'
def main():
 assert not DST.exists() and json.loads((OUT/'base10_r24_manual_audit.json').read_text())['status']=='SCOPED_LOCAL_PASS_NOT_FULL_PLAN_PASS'
 shutil.copytree(SRC,DST,ignore=lambda p,ns:[n for n in ns if Path(p)==SRC and n in ('build','dist','.audit_decode_ok')])
 edits=[]
 rel='smali/o/qi.smali';p=DST/rel;s=p.read_text(encoding='utf-8');b=next(b for sig,(b,_) in methods(p).items() if sig.split()[-1]=='<init>(Landroid/content/Context;Landroid/view/WindowManager;)V')
 old='invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z';assert b.count(old)==1
 a=b.replace(old,'invoke-static {p1, p2, v0}, '+HELP+'->flag(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z')
 old='invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I';assert a.count(old)==4
 a=a.replace(old,'invoke-static {p1, p2, v0}, '+HELP+'->integer(Landroid/content/SharedPreferences;Ljava/lang/String;I)I')
 p.write_text(s.replace(b,a),encoding='utf-8');edits.append(dict(path=rel,before=b,after=a))
 rel='smali/o/tk.smali';p=DST/rel;s=p.read_text(encoding='utf-8');at=s.index('    const-string v6, "turn_signal_camera_enabled"');old='invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z';end=s.index(old,at)+len(old);b=s[at:end];assert b.count('invoke-interface')==1
 a=b.replace(old,'invoke-static {v4, v6, v5}, '+HELP+'->flag(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z');p.write_text(s[:at]+a+s[end:],encoding='utf-8');edits.append(dict(path=rel,before=b,after=a))
 rel='smali/com/byd/launcher/stability/CameraPreferences.smali';assert not (DST/rel).exists();shutil.copy2(OUT/'modules/camera_preferences_r25/decoded'/rel,DST/rel)
 changes=sorted([x['path'] for x in edits]+[rel])
 for suffix,obj in [('preferences_manifest',dict(edits=edits,added=[rel])),('changes',changes)]:
  (OUT/('base10_r25_'+suffix+'.json')).write_text(json.dumps(obj,ensure_ascii=False,indent=2),encoding='utf-8')
 (OUT/'base10_r25.patch').write_text(''.join(''.join(difflib.unified_diff((SRC/r).read_text(encoding='utf-8').splitlines(True) if (SRC/r).exists() else [],(DST/r).read_text(encoding='utf-8').splitlines(True),fromfile='r24/'+r,tofile='r25/'+r)) for r in changes),encoding='utf-8')
 print('R25 three-file draft, exactly six preference read sites; values/defaults retained; no camera actions changed.')
if __name__=='__main__':main()
