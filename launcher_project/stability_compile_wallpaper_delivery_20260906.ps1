$ErrorActionPreference = 'Stop'
$taskRoot = 'D:\apk\launcher_project'
$taskOut = "$taskRoot\diagnostics\stability_local_20260905_r1\modules\wallpaper_delivery_r2"
$taskExecutor = "$taskRoot\diagnostics\stability_local_20260905_r1\modules\wallpaper_executor_r1\classes"
$taskSdkSource = 'C:\Users\L\AppData\Local\Android\Sdk\platforms\android-29\android.jar'
$taskAndroid = "$taskOut\android29-reference.jar"
if (Test-Path -LiteralPath $taskOut) { throw 'Refuse overwriting module output' }
New-Item -ItemType Directory -Path "$taskOut\classes", "$taskOut\tests", "$taskOut\dex" | Out-Null
# JDK zipfs cleanup cannot resolve the protected SDK path on this host. Use a
# byte-identical workspace reference rather than escalating SDK permissions.
Copy-Item -LiteralPath $taskSdkSource -Destination $taskAndroid
if ((Get-FileHash -LiteralPath $taskSdkSource).Hash -ne (Get-FileHash -LiteralPath $taskAndroid).Hash) { throw 'SDK reference copy mismatch' }
& 'D:\Android\.jdk21\bin\javac.exe' --release 8 -Xlint:-options -encoding UTF-8 -cp $taskAndroid -d "$taskOut\classes" "$taskRoot\stability_modules\src\com\byd\launcher\stability\WallpaperDelivery.java"
if ($LASTEXITCODE -ne 0) { throw 'Module compilation failed' }
& 'D:\Android\.jdk21\bin\javac.exe' --release 8 -Xlint:-options -encoding UTF-8 -cp "$taskOut\classes;$taskExecutor" -d "$taskOut\tests" "$taskRoot\stability_modules\test\android\os\Handler.java" "$taskRoot\stability_modules\test\android\os\Looper.java" "$taskRoot\stability_modules\test\WallpaperDeliveryTest.java"
if ($LASTEXITCODE -ne 0) { throw 'Test compilation failed' }
& 'D:\Android\.jdk21\bin\java.exe' -cp "$taskOut\tests;$taskOut\classes;$taskExecutor" WallpaperDeliveryTest *> "$taskOut\jvm_tests.txt"
if ($LASTEXITCODE -ne 0) { throw 'Real JVM tests failed' }
$taskClassFiles = @(Get-ChildItem -LiteralPath "$taskOut\classes\com\byd\launcher\stability" -Filter '*.class' | ForEach-Object { $_.FullName })
& 'D:\Android\.jdk21\bin\java.exe' -cp 'C:\Users\L\AppData\Local\Android\Sdk\build-tools\35.0.0\lib\d8.jar' com.android.tools.r8.D8 --release --min-api 24 --lib $taskAndroid --output "$taskOut\dex" @taskClassFiles *> "$taskOut\d8.txt"
if ($LASTEXITCODE -ne 0) { throw 'D8 failed' }
Get-Content -LiteralPath "$taskOut\jvm_tests.txt"
