[CmdletBinding()]
param(
    [Parameter()]
    [string]$ApktoolOutput = '',

    [Parameter()]
    [string]$JadxOutput = ''
)

$ErrorActionPreference = 'Stop'

$workspaceRoot = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..')).Path
$baseline = Join-Path $workspaceRoot 'ORIGINAL_BASELINE.apk'
$expectedBaselineSha256 = '93042E48C12ED395E8F5D450BE1285E0397897F685EE95AC4080763B6E6DCCD9'
$java = 'D:\Android\.jdk21\bin\java.exe'
$apktool = Join-Path $workspaceRoot 'apktool_3.0.2.jar'
$frameworkDir = Join-Path $workspaceRoot 'apktool-framework'
$jadxJar = 'D:\Android\apk_analysis_dd\jadx\lib\jadx-1.5.5-all.jar'
$buildTools = 'C:\Users\L\AppData\Local\Android\Sdk\build-tools\35.0.0'
$aapt = Join-Path $buildTools 'aapt.exe'
$apksignerJar = Join-Path $buildTools 'lib\apksigner.jar'

if ([string]::IsNullOrWhiteSpace($ApktoolOutput)) {
    $ApktoolOutput = Join-Path $PSScriptRoot 'apktool'
}
if ([string]::IsNullOrWhiteSpace($JadxOutput)) {
    $JadxOutput = Join-Path $PSScriptRoot 'jadx'
}

foreach ($requiredPath in @($baseline, $java, $apktool, $frameworkDir, $jadxJar, $aapt, $apksignerJar)) {
    if (-not (Test-Path -LiteralPath $requiredPath)) {
        throw "Required path is missing: $requiredPath"
    }
}

$actualHash = (Get-FileHash -LiteralPath $baseline -Algorithm SHA256).Hash
if ($actualHash -ne $expectedBaselineSha256) {
    throw "Baseline hash mismatch. Expected $expectedBaselineSha256, got $actualHash"
}

foreach ($outputDir in @($ApktoolOutput, $JadxOutput)) {
    if (Test-Path -LiteralPath $outputDir) {
        throw "Analysis output already exists and will not be overwritten: $outputDir"
    }
}

Write-Host 'Baseline metadata:'
& $aapt dump badging $baseline
if ($LASTEXITCODE -ne 0) { throw 'aapt failed to parse the baseline APK' }

Write-Host 'Baseline signature:'
& $java -jar $apksignerJar verify --verbose --print-certs $baseline
if ($LASTEXITCODE -ne 0) { throw 'apksigner failed to verify the baseline APK' }

Write-Host 'Decoding with apktool...'
& $java -jar $apktool d --frame-path $frameworkDir --output $ApktoolOutput $baseline
if ($LASTEXITCODE -ne 0) { throw 'apktool decode failed' }

$env:JADX_CONFIG_DIR = Join-Path $PSScriptRoot '.jadx-config'
$env:JADX_CACHE_DIR = Join-Path $PSScriptRoot '.jadx-cache'
Write-Host 'Decompiling with JADX CLI...'
try {
    & $java -cp $jadxJar jadx.cli.JadxCLI --deobf --output-dir $JadxOutput $baseline
    $jadxExitCode = $LASTEXITCODE
}
finally {
    Remove-Item Env:JADX_CONFIG_DIR -ErrorAction SilentlyContinue
    Remove-Item Env:JADX_CACHE_DIR -ErrorAction SilentlyContinue
}

if ($jadxExitCode -ne 0) {
    $sourceDir = Join-Path $JadxOutput 'sources'
    if (Test-Path -LiteralPath $sourceDir) {
        Write-Warning "JADX completed with method-level decompilation errors (exit $jadxExitCode). Use apktool smali as the source of truth for affected methods."
    }
    else {
        throw "JADX failed before producing sources (exit $jadxExitCode)"
    }
}

Write-Host "apktool output: $ApktoolOutput"
Write-Host "JADX output: $JadxOutput"

