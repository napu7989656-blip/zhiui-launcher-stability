"""Read-only inventory of policy command literals and their owning methods."""
import json,re
from pathlib import Path
from stability_local_audit_20260905 import methods
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
BASE=OUT/'worktrees/base07_wallpaper_delivery_r1'
def main():
    records=[]
    for p in BASE.glob('smali*/**/*.smali'):
        text=p.read_text(encoding='utf-8')
        if 'policy_control' not in text:continue
        for sig,(body,line) in methods(p).items():
            for m in re.finditer(r'const-string(?:/jumbo)? \w+, "([^"\n]*policy_control[^"\n]*)"',body):
                value=m.group(1)
                records.append(dict(path=p.relative_to(BASE).as_posix(),method=sig,line=line+body[:m.start()].count('\n'),literal=value,command=value.startswith(('settings ','/system/bin/settings '))))
    commands=sorted({r['literal'] for r in records if r['command']})
    assert commands==['settings put global policy_control immersive.status=com.byd.launcher','settings put global policy_control null'],commands
    (OUT/'base06_policy_producers.json').write_text(json.dumps(records,ensure_ascii=False,indent=2),encoding='utf-8')
    (OUT/'base06_policy_commands.txt').write_text('\n'.join(commands)+'\n',encoding='utf-8')
    print(f'Policy inventory: {len(records)} literals, {sum(r["command"] for r in records)} command sites, {len(commands)} distinct commands. No commands executed.')
if __name__=='__main__':main()
