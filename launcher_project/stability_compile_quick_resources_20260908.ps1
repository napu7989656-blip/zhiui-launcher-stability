$ErrorActionPreference='Stop'
$taskRoot='D:\apk\launcher_project'
$taskEvidence="$taskRoot\diagnostics\stability_local_20260905_r1"
$taskOut="$taskEvidence\modules\quick_resources_r4"
$taskAndroid="$taskEvidence\modules\wallpaper_delivery_r2\android29-reference.jar"
$taskStatus="$taskEvidence\modules\status_resources_r1\classes"
if(Test-Path -LiteralPath $taskOut){throw 'Refuse overwriting module output'}
New-Item -ItemType Directory -Path "$taskOut\classes","$taskOut\tests","$taskOut\dex" | Out-Null
& 'D:\Android\.jdk21\bin\javac.exe' --release 8 -Xlint:-options -encoding UTF-8 -cp "$taskAndroid;$taskStatus" -d "$taskOut\classes" "$taskRoot\stability_modules\src\com\byd\launcher\stability\QuickSettingsResources.java"
if($LASTEXITCODE -ne 0){throw 'Production compile failed'}
$taskStubs=@(Get-ChildItem -LiteralPath "$taskRoot\stability_modules\test\quick_stubs" -Filter '*.java' -Recurse | ForEach-Object {$_.FullName})
& 'D:\Android\.jdk21\bin\javac.exe' --release 8 -Xlint:-options -encoding UTF-8 -cp "$taskOut\classes;$taskStatus" -d "$taskOut\tests" @taskStubs "$taskRoot\stability_modules\test\QuickSettingsResourcesTest.java"
if($LASTEXITCODE -ne 0){throw 'Test compile failed'}
& 'D:\Android\.jdk21\bin\java.exe' -cp "$taskOut\tests;$taskOut\classes;$taskStatus" QuickSettingsResourcesTest *> "$taskOut\jvm_tests.txt"
if($LASTEXITCODE -ne 0){throw 'Resource module tests failed'}
& 'D:\Android\.jdk21\bin\jar.exe' --create --file "$taskOut\status-resources-classpath.jar" -C $taskStatus 'com/byd/launcher/stability/StatusBarResources.class'
if($LASTEXITCODE -ne 0){throw 'Dependency JAR failed'}
& 'D:\Android\.jdk21\bin\java.exe' -cp 'C:\Users\L\AppData\Local\Android\Sdk\build-tools\35.0.0\lib\d8.jar' com.android.tools.r8.D8 --release --min-api 24 --lib $taskAndroid --classpath "$taskOut\status-resources-classpath.jar" --output "$taskOut\dex" "$taskOut\classes\com\byd\launcher\stability\QuickSettingsResources.class" *> "$taskOut\d8.txt"
if($LASTEXITCODE -ne 0){throw 'D8 failed'}
Get-Content -LiteralPath "$taskOut\jvm_tests.txt"
