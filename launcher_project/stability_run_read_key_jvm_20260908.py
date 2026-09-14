"""Feed extracted parent/current smali keys into the real production pool test."""
import subprocess,json
from test_base10_read_keys_20260908 import keys,SRC,DST,OUT
def main():
    root=OUT/'modules/read_key_regression_r1';root.mkdir(exist_ok=True)
    assert not (root/'jvm_tests.json').exists(),'Refuse overwrite of completed evidence'
    cp=';'.join(str(OUT/p) for p in ['modules/quick_read_executor_r1/tests','modules/quick_read_executor_r1/classes','modules/quick_handler_r1/api'])
    with (root/'compile.txt').open('w',encoding='utf-8') as log:
        subprocess.run(['D:/Android/.jdk21/bin/javac.exe','--release','8','-Xlint:-options','-encoding','UTF-8','-cp',cp,'-d',str(root),'D:/apk/launcher_project/stability_modules/test/QuickSettingsReadKeysTest.java'],stdout=log,stderr=subprocess.STDOUT,check=True)
    results=[]
    for tree,fixed in [(SRC,False),(DST,True)]:
        values=keys(tree)
        p=subprocess.run(['D:/Android/.jdk21/bin/java.exe','-cp',str(root)+';'+cp,'QuickSettingsReadKeysTest']+[str(k) for k in values]+[str(fixed).lower()],capture_output=True,text=True,check=True)
        results.append(dict(tree=str(tree),keys=values,output=p.stdout.strip()));print(p.stdout.strip())
    (root/'jvm_tests.json').write_text(json.dumps(results,indent=2),encoding='utf-8')
if __name__=='__main__':main()
