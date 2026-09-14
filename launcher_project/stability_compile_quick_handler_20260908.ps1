$ErrorActionPreference='Stop'
$taskRoot='D:\apk\launcher_project'
$taskEvidence="$taskRoot\diagnostics\stability_local_20260905_r1"
$taskOut="$taskEvidence\modules\quick_handler_r1"
$taskAndroid="$taskEvidence\modules\wallpaper_delivery_r2\android29-reference.jar"
if(Test-Path -LiteralPath $taskOut){throw 'Refuse overwriting module output'}
New-Item -ItemType Directory -Path "$taskOut\classes","$taskOut\api","$taskOut\tests","$taskOut\dex" | Out-Null
& 'D:\Android\.jdk21\bin\javac.exe' --release 8 -encoding UTF-8 -d "$taskOut\api" "$taskRoot\stability_modules\test\handler_stubs\com\byd\launcher\stability\QuickSettingsLifetime.java"
if($LASTEXITCODE -ne 0){throw 'Compile-only API failed'}
& 'D:\Android\.jdk21\bin\javac.exe' --release 8 -encoding UTF-8 -cp "$taskAndroid;$taskOut\api" -d "$taskOut\classes" "$taskRoot\stability_modules\src\com\byd\launcher\stability\QuickSettingsHandler.java"
if($LASTEXITCODE -ne 0){throw 'Production compile failed'}
$taskStubs=@(Get-ChildItem -LiteralPath "$taskRoot\stability_modules\test\handler_stubs\android" -Filter '*.java' -Recurse | ForEach-Object {$_.FullName})
& 'D:\Android\.jdk21\bin\javac.exe' --release 8 -encoding UTF-8 -cp "$taskOut\classes;$taskOut\api" -d "$taskOut\tests" @taskStubs "$taskRoot\stability_modules\test\QuickSettingsHandlerTest.java"
if($LASTEXITCODE -ne 0){throw 'Test compile failed'}
& 'D:\Android\.jdk21\bin\java.exe' -cp "$taskOut\tests;$taskOut\classes;$taskOut\api" QuickSettingsHandlerTest *> "$taskOut\jvm_tests.txt"
if($LASTEXITCODE -ne 0){throw 'Handler tests failed'}
& 'D:\Android\.jdk21\bin\jar.exe' --create --file "$taskOut\lifetime-api-classpath.jar" -C "$taskOut\api" 'com/byd/launcher/stability/QuickSettingsLifetime.class'
if($LASTEXITCODE -ne 0){throw 'Classpath JAR failed'}
& 'D:\Android\.jdk21\bin\java.exe' -cp 'C:\Users\L\AppData\Local\Android\Sdk\build-tools\35.0.0\lib\d8.jar' com.android.tools.r8.D8 --release --min-api 24 --lib $taskAndroid --classpath "$taskOut\lifetime-api-classpath.jar" --output "$taskOut\dex" "$taskOut\classes\com\byd\launcher\stability\QuickSettingsHandler.class" *> "$taskOut\d8.txt"
if($LASTEXITCODE -ne 0){throw 'D8 failed'}
Get-Content -LiteralPath "$taskOut\jvm_tests.txt"
