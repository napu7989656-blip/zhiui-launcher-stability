from pathlib import Path
import shutil
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1';p=ROOT/'stability_verify_base05_cumulative_20260906.py';b=OUT/'tool_archive_before_r28';assert not b.exists();b.mkdir();shutil.copy2(p,b/p.name)
s=p.read_text(encoding='utf-8').replace("'base10_r27']","'base10_r27','base10_r28']").replace("'base10_r27')","'base10_r27','base10_r28')")
s=s.replace("'base10_r27':'base10_camera_handoff_r27'","'base10_r27':'base10_camera_handoff_r27','base10_r28':'base10_camera_egl_r28'")
p.write_text(s,encoding='utf-8');print('R28 exact cumulative version added, no new allowed paths.')
