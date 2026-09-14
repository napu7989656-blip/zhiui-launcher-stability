$ErrorActionPreference='Stop'
$taskRoot='D:\apk\launcher_project'
$taskEvidence="$taskRoot\diagnostics\stability_local_20260905_r1"
$taskOut="$taskEvidence\modules\policy_readonly_r1"
$taskAndroid="$taskEvidence\modules\wallpaper_delivery_r2\android29-reference.jar"
if(Test-Path -LiteralPath $taskOut){throw 'Refuse overwriting module output'}
New-Item -ItemType Directory -Path "$taskOut\classes","$taskOut\tests","$taskOut\dex" | Out-Null
& 'C:\Program Files\Python312\python.exe' "$taskRoot\stability_policy_inventory_20260906.py"
if($LASTEXITCODE -ne 0){throw 'Producer inventory failed'}
& 'D:\Android\.jdk21\bin\javac.exe' --release 8 -Xlint:-options -encoding UTF-8 -cp $taskAndroid -d "$taskOut\classes" "$taskRoot\stability_modules\src\com\byd\launcher\stability\PolicyControlReadOnly.java"
if($LASTEXITCODE -ne 0){throw 'Production compile failed'}
$taskStubs=@(Get-ChildItem -LiteralPath "$taskRoot\stability_modules\test\policy_stubs" -Filter '*.java' -Recurse | ForEach-Object {$_.FullName})
& 'D:\Android\.jdk21\bin\javac.exe' --release 8 -Xlint:-options -encoding UTF-8 -cp "$taskOut\classes" -d "$taskOut\tests" @taskStubs "$taskRoot\stability_modules\test\PolicyControlReadOnlyTest.java"
if($LASTEXITCODE -ne 0){throw 'Test compile failed'}
& 'D:\Android\.jdk21\bin\java.exe' -cp "$taskOut\tests;$taskOut\classes" PolicyControlReadOnlyTest "$taskEvidence\base06_policy_commands.txt" *> "$taskOut\jvm_tests.txt"
if($LASTEXITCODE -ne 0){throw 'Policy module tests failed'}
& 'D:\Android\.jdk21\bin\java.exe' -cp 'C:\Users\L\AppData\Local\Android\Sdk\build-tools\35.0.0\lib\d8.jar' com.android.tools.r8.D8 --release --min-api 24 --lib $taskAndroid --output "$taskOut\dex" "$taskOut\classes\com\byd\launcher\stability\PolicyControlReadOnly.class" *> "$taskOut\d8.txt"
if($LASTEXITCODE -ne 0){throw 'D8 failed'}
Get-Content -LiteralPath "$taskOut\jvm_tests.txt"
