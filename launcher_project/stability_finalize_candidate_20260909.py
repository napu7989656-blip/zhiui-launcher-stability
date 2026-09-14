"""Read-only candidate checks plus independent decode/evidence outputs. No device use."""
import argparse,json,os,subprocess
from pathlib import Path
ROOT=Path('D:/apk/launcher_project');OUT=ROOT/'diagnostics/stability_local_20260905_r1'
def main():
    p=argparse.ArgumentParser();p.add_argument('tag');p.add_argument('parent');p.add_argument('work');p.add_argument('apk');p.add_argument('test');p.add_argument('classes',nargs='+');p.add_argument('--resume',action='store_true');a=p.parse_args()
    java='D:/Android/.jdk21/bin/java.exe';python='C:/Program Files/Python312/python.exe';apk=Path('D:/apk')/a.apk
    assert apk.is_file();final=OUT/'final_redecode'/a.tag
    if a.resume:
        assert final.is_dir() and (final/'apktool.yml').is_file()
        assert 'Copying original files' in (OUT/'logs'/(a.tag+'_final_decode.txt')).read_text(encoding='utf-8')
    else:assert not final.exists(),'Refuse overwriting final decode'
    def run(args,log,allow_failure=False,env=None):
        path=OUT/'logs'/log
        if a.resume:
            suffix=1
            while path.exists():path=OUT/'logs'/(log+'.resume'+str(suffix));suffix+=1
        with path.open('x',encoding='utf-8') as f:r=subprocess.run(args,stdout=f,stderr=subprocess.STDOUT,env=env)
        if not allow_failure:assert r.returncode==0,(log,r.returncode)
        return r.returncode
    if not a.resume:
        print('Final apktool decode...',flush=True)
        run([java,'-jar','D:/apk/apktool_3.0.2.jar','d',str(apk),'-o',str(final),'-p','D:/apk/apktool-framework'],a.tag+'_final_decode.txt')
    print('Final branch tests...',flush=True)
    run([python,str(ROOT/a.test),'--final'],a.tag+'_final_branch_console.txt')
    print('Exact parent/content verification...',flush=True)
    changes=json.loads((OUT/(a.tag+'_changes.json')).read_text(encoding='utf-8'))
    run([python,str(ROOT/'stability_verify_patch_20260906.py'),a.tag,a.parent,a.work,a.apk]+changes,a.tag+'_verify_console.json')
    for script,args in [('stability_verify_base05_cumulative_20260906.py',['--tag',a.tag]),('stability_check_cumulative_20260906.py',[a.tag])]:
        print(script,flush=True);run([python,str(ROOT/script)]+args,a.tag+'_'+script+'.txt')
    env=os.environ.copy();env['JAVA_HOME']='D:/Android/.jdk21'
    run(['C:/Users/L/AppData/Local/Android/Sdk/cmdline-tools/latest/bin/apkanalyzer.bat','apk','summary',str(apk)],a.tag+'_apkanalyzer.txt',env=env)
    jadx=[]
    for i,cls in enumerate(a.classes):
        print('JADX inspection: '+cls,flush=True)
        log=a.tag+'_jadx_'+str(i)+'_debug.txt';path=OUT/(a.tag+'_jadx_'+str(i)+'.java')
        code=run([java,'-cp','D:/Android/apk_analysis_dd/jadx/lib/jadx-1.5.5-all.jar','jadx.cli.JadxCLI','--log-level','DEBUG','--single-class',cls,'--single-class-output',str(path),str(apk)],log,True)
        jadx.append(dict(cls=cls,exit_code=code,log=log,output_exists=path.exists(),requires_manual_inspection=True))
    (OUT/(a.tag+'_finalize_status.json')).write_text(json.dumps(dict(checks_passed=True,jadx=jadx,limits='JADX errors require explicit review; scoped local checks, not full-plan/ART/vehicle validation'),indent=2),encoding='utf-8')
    print('Candidate content/API/branch gates passed; inspect JADX outputs and update project evidence.',flush=True)
if __name__=='__main__':main()
