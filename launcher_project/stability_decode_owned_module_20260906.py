"""Use apktool to inspect owned D8 output without extracting an original APK."""
import argparse,zipfile,subprocess,re
from pathlib import Path
OUT=Path('D:/apk/launcher_project/diagnostics/stability_local_20260905_r1')
def main():
    p=argparse.ArgumentParser();p.add_argument('module');p.add_argument('manifest_apk');a=p.parse_args()
    assert re.fullmatch(r'[a-z0-9_]+',a.module)
    root=OUT/'modules'/a.module;container=root/'dex-inspection-container.apk';decoded=root/'decoded'
    assert not container.exists() and not decoded.exists(),'Refuse overwrite'
    apk=Path('D:/apk')/a.manifest_apk;assert apk.parent==Path('D:/apk') and apk.suffix=='.apk'
    with zipfile.ZipFile(apk) as z:manifest=z.read('AndroidManifest.xml')
    with zipfile.ZipFile(container,'x') as z:
        z.writestr('AndroidManifest.xml',manifest);z.writestr('classes.dex',(root/'dex/classes.dex').read_bytes())
    with (root/'decode.txt').open('w',encoding='utf-8') as log:
        subprocess.run(['D:/Android/.jdk21/bin/java.exe','-jar','D:/apk/apktool_3.0.2.jar','d','-r',str(container),'-o',str(decoded),'-p','D:/apk/apktool-framework'],stdout=log,stderr=subprocess.STDOUT,check=True)
    files=list(decoded.glob('smali/**/*.smali'));assert files
    assert all('smali/com/byd/launcher/stability/' in p.as_posix() for p in files),'Test stubs or other classes reached DEX'
    print('Owned DEX inspected; no test/framework doubles in DEX:',len(files),'classes. Container is not installable.')
if __name__=='__main__':main()
