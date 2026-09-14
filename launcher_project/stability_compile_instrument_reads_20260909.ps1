$ErrorActionPreference='Stop'
$taskRoot='D:\apk\launcher_project'
$taskEvidence="$taskRoot\diagnostics\stability_local_20260905_r1"
$taskOut="$taskEvidence\modules\instrument_reads_r1"
$taskAndroid="$taskEvidence\modules\wallpaper_delivery_r2\android29-reference.jar"
if(Test-Path -LiteralPath $taskOut){throw 'Refuse overwriting module output'}
New-Item -ItemType Directory -Path "$taskOut\classes","$taskOut\tests","$taskOut\dex" | Out-Null
& 'D:\Android\.jdk21\bin\javac.exe' --release 8 -Xlint:-options -encoding UTF-8 -d "$taskOut\classes" "$taskRoot\stability_modules\src\com\byd\launcher\stability\InstrumentReads.java"
if($LASTEXITCODE -ne 0){throw 'Production compile failed'}
& 'D:\Android\.jdk21\bin\javac.exe' --release 8 -Xlint:-options -encoding UTF-8 -cp "$taskOut\classes" -d "$taskOut\tests" "$taskRoot\stability_modules\test\InstrumentReadsTest.java"
if($LASTEXITCODE -ne 0){throw 'Test compile failed'}
& 'D:\Android\.jdk21\bin\java.exe' -cp "$taskOut\tests;$taskOut\classes" InstrumentReadsTest *> "$taskOut\jvm_tests.txt"
if($LASTEXITCODE -ne 0){throw 'Instrument read tests failed'}
$taskClasses=@(Get-ChildItem -LiteralPath "$taskOut\classes\com\byd\launcher\stability" -Filter '*.class' | ForEach-Object {$_.FullName})
& 'D:\Android\.jdk21\bin\java.exe' -cp 'C:\Users\L\AppData\Local\Android\Sdk\build-tools\35.0.0\lib\d8.jar' com.android.tools.r8.D8 --release --min-api 24 --lib $taskAndroid --output "$taskOut\dex" @taskClasses *> "$taskOut\d8.txt"
if($LASTEXITCODE -ne 0){throw 'D8 failed'}
Get-Content -LiteralPath "$taskOut\jvm_tests.txt"
