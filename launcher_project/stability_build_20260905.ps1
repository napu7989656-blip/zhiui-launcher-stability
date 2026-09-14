[CmdletBinding()]
param(
    [Parameter(Mandatory=$true)][string]$DecodedDir,
    [Parameter(Mandatory=$true)][string]$OutputName,
    [Parameter(Mandatory=$true)][string]$LogPath
)
$ErrorActionPreference = 'Stop'
# Reuse the project's documented signing credentials only inside this process.
# Never write their values to a command, log, or generated file.
$priorStore = $env:ZHIUI_KEYSTORE_PASSWORD
$priorKey = $env:ZHIUI_KEY_PASSWORD
$taskCredentialText = $null
try {
    if ([string]::IsNullOrWhiteSpace($priorStore)) {
        $taskCredentialText = Get-Content -LiteralPath 'D:\apk\智UI项目日志.md' -Raw
        $taskStoreMatches = [regex]::Matches($taskCredentialText, '(?m)^- 密钥口令：[ \t]*(.+?)\r?$')
        $taskKeyMatches = [regex]::Matches($taskCredentialText, '(?m)^- 私钥口令：[ \t]*(.+?)\r?$')
        if ($taskStoreMatches.Count -ne 1 -or $taskKeyMatches.Count -ne 1) {
            throw 'Project signing credential records are not unambiguous; no signing attempted.'
        }
        $env:ZHIUI_KEYSTORE_PASSWORD = $taskStoreMatches[0].Groups[1].Value.Trim().Trim([char]96)
        $env:ZHIUI_KEY_PASSWORD = $taskKeyMatches[0].Groups[1].Value.Trim().Trim([char]96)
    }
    $taskCredentialText = $null
    & 'D:\apk\launcher_project\build.ps1' -DecodedDir $DecodedDir -OutputName $OutputName *> $LogPath
    if (-not $?) { throw 'Build failed; inspect the non-secret build log.' }
    Write-Output "Build completed: $OutputName"
}
finally {
    $env:ZHIUI_KEYSTORE_PASSWORD = $priorStore
    $env:ZHIUI_KEY_PASSWORD = $priorKey
    $taskCredentialText = $null
    $taskStoreMatches = $null
    $taskKeyMatches = $null
}
