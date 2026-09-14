$ErrorActionPreference = 'Stop'
$taskRoot = 'D:\apk\launcher_project'
$taskOut = "$taskRoot\diagnostics\stability_local_20260905_r1\modules\wallpaper_executor_r1"
if (Test-Path -LiteralPath $taskOut) { throw 'Refuse overwriting module output' }
New-Item -ItemType Directory -Path "$taskOut\classes", "$taskOut\tests", "$taskOut\dex" | Out-Null
& 'D:\Android\.jdk21\bin\javac.exe' --release 8 -encoding UTF-8 -d "$taskOut\classes" "$taskRoot\stability_modules\src\com\byd\launcher\stability\WallpaperExecutor.java"
if ($LASTEXITCODE -ne 0) { throw 'Module compilation failed' }
& 'D:\Android\.jdk21\bin\javac.exe' --release 8 -encoding UTF-8 -cp "$taskOut\classes" -d "$taskOut\tests" "$taskRoot\stability_modules\test\WallpaperExecutorTest.java"
if ($LASTEXITCODE -ne 0) { throw 'Test compilation failed' }
& 'D:\Android\.jdk21\bin\java.exe' -cp "$taskOut\classes;$taskOut\tests" WallpaperExecutorTest *> "$taskOut\jvm_tests.txt"
if ($LASTEXITCODE -ne 0) { throw 'Real JVM tests failed' }
& 'D:\Android\.jdk21\bin\java.exe' -cp 'C:\Users\L\AppData\Local\Android\Sdk\build-tools\35.0.0\lib\d8.jar' com.android.tools.r8.D8 --release --min-api 24 --lib 'C:\Users\L\AppData\Local\Android\Sdk\platforms\android-29\android.jar' --output "$taskOut\dex" "$taskOut\classes\com\byd\launcher\stability\WallpaperExecutor.class" *> "$taskOut\d8.txt"
if ($LASTEXITCODE -ne 0) { throw 'D8 failed' }
Get-Content -LiteralPath "$taskOut\jvm_tests.txt"
