param(
    [Parameter(Mandatory=$true)][string]$AssetDirectory,
    [Parameter(Mandatory=$true)][string]$Destination
)
$ErrorActionPreference = 'Stop'
$assets = (Resolve-Path -LiteralPath $AssetDirectory).Path
$target = [IO.Path]::GetFullPath($Destination)
if (Test-Path -LiteralPath $target) { throw 'Choose a new empty destination path; existing files will not be overwritten.' }
$batches = @(Get-ChildItem -LiteralPath $assets -Filter 'project_R28_*.7z.001' -File | Sort-Object Name)
if ($batches.Count -eq 0) { throw 'No project archive batches found.' }
$decoderRoot = Join-Path $target '_decoder'
New-Item -ItemType Directory -Path $decoderRoot | Out-Null
Expand-Archive -LiteralPath (Join-Path $assets '7zip-portable.zip') -DestinationPath $decoderRoot
$decoder = Join-Path $decoderRoot '7zip\7z.exe'
$securePassword = Read-Host 'Encrypted project password (stored separately on the original computer)' -AsSecureString
$passwordPointer = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($securePassword)
try {
    $passwordText = [Runtime.InteropServices.Marshal]::PtrToStringBSTR($passwordPointer)
    foreach ($batch in $batches) {
        Write-Host ('Extracting ' + $batch.Name)
        & $decoder x $batch.FullName ('-p' + $passwordText) ('-o' + $target) '-aos' '-bsp1'
        if ($LASTEXITCODE -ne 0) { throw ('Extraction failed: ' + $batch.Name + '. Keep all volumes together and check the password.') }
    }
} finally {
    [Runtime.InteropServices.Marshal]::ZeroFreeBSTR($passwordPointer)
    $passwordText = $null
}
Write-Host ('Project restored to ' + (Join-Path $target 'apk'))
Write-Host 'Keep this restored directory outside the Git checkout: it contains signing keys and private configuration.'
Write-Host 'Configure existing Android SDK/JDK/JADX paths before building. Read the current Git repository PROJECT_HANDOFF.md.'
