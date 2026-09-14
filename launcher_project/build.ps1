[CmdletBinding()]
param(
    [Parameter()]
    [ValidatePattern('^[^\\/:*?"<>|]+\.apk$')]
    [string]$OutputName = 'Launcher_Rebuild_Test.apk',

    [Parameter()]
    [string]$DecodedDir = '',

    [Parameter()]
    [string]$Keystore = '',

    [Parameter()]
    [string]$KeyAlias = 'zhiui',

    [Parameter()]
    [switch]$Force
)

$ErrorActionPreference = 'Stop'

$workspaceRoot = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..')).Path
$defaultDecodedDir = Join-Path $PSScriptRoot 'apktool'
$diagnosticsRoot = Join-Path $PSScriptRoot 'diagnostics'
if ([string]::IsNullOrWhiteSpace($DecodedDir)) {
    $decodedDir = $defaultDecodedDir
}
else {
    $decodedDir = (Resolve-Path -LiteralPath $DecodedDir).Path
    $fullDiagnosticsRoot = [System.IO.Path]::GetFullPath($diagnosticsRoot).TrimEnd('\') + '\'
    $fullDecodedDir = [System.IO.Path]::GetFullPath($decodedDir).TrimEnd('\') + '\'
    if (-not $fullDecodedDir.StartsWith($fullDiagnosticsRoot, [System.StringComparison]::OrdinalIgnoreCase)) {
        throw "DecodedDir must be the default apktool tree or a dedicated tree under launcher_project\\diagnostics: $decodedDir"
    }
}
$buildDir = Join-Path $PSScriptRoot 'build'
$baseline = Join-Path $workspaceRoot 'ORIGINAL_BASELINE.apk'
$expectedBaselineSha256 = '93042E48C12ED395E8F5D450BE1285E0397897F685EE95AC4080763B6E6DCCD9'

$java = 'D:\Android\.jdk21\bin\java.exe'
$apktool = Join-Path $workspaceRoot 'apktool_3.0.2.jar'
$frameworkDir = Join-Path $workspaceRoot 'apktool-framework'
$buildTools = 'C:\Users\L\AppData\Local\Android\Sdk\build-tools\35.0.0'
$aapt = Join-Path $buildTools 'aapt.exe'
$zipalign = Join-Path $buildTools 'zipalign.exe'
$apksignerJar = Join-Path $buildTools 'lib\apksigner.jar'

if ([string]::IsNullOrWhiteSpace($Keystore)) {
    $Keystore = Join-Path $workspaceRoot 'zhiui-v2.keystore'
}

foreach ($requiredPath in @(
    $baseline,
    $decodedDir,
    $java,
    $apktool,
    $frameworkDir,
    $aapt,
    $zipalign,
    $apksignerJar,
    $Keystore
)) {
    if (-not (Test-Path -LiteralPath $requiredPath)) {
        throw "Required path is missing: $requiredPath"
    }
}

$actualBaselineSha256 = (Get-FileHash -LiteralPath $baseline -Algorithm SHA256).Hash
if ($actualBaselineSha256 -ne $expectedBaselineSha256) {
    throw "Baseline hash mismatch. Expected $expectedBaselineSha256, got $actualBaselineSha256"
}

if (-not (Test-Path -LiteralPath $buildDir)) {
    New-Item -ItemType Directory -Path $buildDir | Out-Null
}

$stem = [System.IO.Path]::GetFileNameWithoutExtension($OutputName)
$unsigned = Join-Path $buildDir ($stem + '-unsigned.apk')
$aligned = Join-Path $buildDir ($stem + '-aligned.apk')
$final = Join-Path $workspaceRoot $OutputName

foreach ($target in @($unsigned, $aligned, $final)) {
    $fullTarget = [System.IO.Path]::GetFullPath($target)
    $allowedRoot = if ($target -eq $final) { $workspaceRoot } else { $buildDir }
    $fullAllowedRoot = [System.IO.Path]::GetFullPath($allowedRoot).TrimEnd('\') + '\'
    if (-not $fullTarget.StartsWith($fullAllowedRoot, [System.StringComparison]::OrdinalIgnoreCase)) {
        throw "Refusing to write outside the expected project directory: $fullTarget"
    }
    if (Test-Path -LiteralPath $fullTarget) {
        if (-not $Force) {
            throw "Output already exists: $fullTarget. Choose another -OutputName or pass -Force."
        }
        Remove-Item -LiteralPath $fullTarget -Force
    }
}

Write-Host '[1/5] Rebuilding decoded APK with apktool 3.0.2...'
& $java -jar $apktool b --force --frame-path $frameworkDir --output $unsigned $decodedDir
if ($LASTEXITCODE -ne 0) {
    throw "apktool build failed with exit code $LASTEXITCODE"
}

Write-Host '[2/5] Aligning APK with Build Tools 35.0.0...'
& $zipalign -f -p 4 $unsigned $aligned
if ($LASTEXITCODE -ne 0) {
    throw "zipalign failed with exit code $LASTEXITCODE"
}

$storePassword = $env:ZHIUI_KEYSTORE_PASSWORD
$keyPassword = $env:ZHIUI_KEY_PASSWORD
$securePassword = $null
$passwordPointer = [IntPtr]::Zero

if ([string]::IsNullOrWhiteSpace($storePassword)) {
    $securePassword = Read-Host 'Keystore password' -AsSecureString
    $passwordPointer = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($securePassword)
    $storePassword = [Runtime.InteropServices.Marshal]::PtrToStringBSTR($passwordPointer)
}
if ([string]::IsNullOrWhiteSpace($keyPassword)) {
    $keyPassword = $storePassword
}

Write-Host '[3/5] Signing with the local project keystore...'
try {
    $env:ZHIUI_BUILD_STORE_PASS = $storePassword
    $env:ZHIUI_BUILD_KEY_PASS = $keyPassword
    & $java -jar $apksignerJar sign `
        --ks $Keystore `
        --ks-key-alias $KeyAlias `
        --ks-pass env:ZHIUI_BUILD_STORE_PASS `
        --key-pass env:ZHIUI_BUILD_KEY_PASS `
        --min-sdk-version 24 `
        --v1-signing-enabled true `
        --v2-signing-enabled true `
        --v3-signing-enabled true `
        --v4-signing-enabled false `
        --out $final `
        $aligned
    if ($LASTEXITCODE -ne 0) {
        throw "apksigner sign failed with exit code $LASTEXITCODE"
    }
}
finally {
    Remove-Item Env:ZHIUI_BUILD_STORE_PASS -ErrorAction SilentlyContinue
    Remove-Item Env:ZHIUI_BUILD_KEY_PASS -ErrorAction SilentlyContinue
    if ($passwordPointer -ne [IntPtr]::Zero) {
        [Runtime.InteropServices.Marshal]::ZeroFreeBSTR($passwordPointer)
    }
    $storePassword = $null
    $keyPassword = $null
    $securePassword = $null
}

Write-Host '[4/5] Verifying alignment and APK signatures...'
& $zipalign -c 4 $final
if ($LASTEXITCODE -ne 0) {
    throw "zipalign verification failed with exit code $LASTEXITCODE"
}
& $java -jar $apksignerJar verify --verbose --print-certs $final
if ($LASTEXITCODE -ne 0) {
    throw "apksigner verification failed with exit code $LASTEXITCODE"
}

Write-Host '[5/5] Checking package metadata...'
$badging = @(& $aapt dump badging $final)
if ($LASTEXITCODE -ne 0) {
    throw "aapt parsing failed with exit code $LASTEXITCODE"
}
$badging | Where-Object { $_ -match '^(package:|sdkVersion:|targetSdkVersion:|native-code:)' }

$artifact = Get-Item -LiteralPath $final
$artifactHash = (Get-FileHash -LiteralPath $final -Algorithm SHA256).Hash
Write-Host "Built: $($artifact.FullName)"
Write-Host "Bytes: $($artifact.Length)"
Write-Host "SHA-256: $artifactHash"
