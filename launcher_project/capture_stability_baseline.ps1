[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidatePattern('^[A-Za-z0-9._:-]+$')]
    [string]$Device,

    [Parameter()]
    [string]$OutputDir = ''
)

$ErrorActionPreference = 'Stop'

$workspaceRoot = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..')).Path
$diagnosticsRoot = Join-Path $PSScriptRoot 'diagnostics'
$adb = 'C:\Users\L\AppData\Local\Android\Sdk\platform-tools\adb.exe'
$adbUserHome = Join-Path $diagnosticsRoot 'adb_userhome'

if (-not (Test-Path -LiteralPath $adb)) {
    throw "ADB is missing: $adb"
}

if ([string]::IsNullOrWhiteSpace($OutputDir)) {
    $OutputDir = Join-Path $diagnosticsRoot ('stability_capture_' + (Get-Date -Format 'yyyyMMdd_HHmmss'))
}
else {
    $OutputDir = [System.IO.Path]::GetFullPath($OutputDir)
    $allowedRoot = [System.IO.Path]::GetFullPath($diagnosticsRoot).TrimEnd('\') + '\'
    if (-not ($OutputDir.TrimEnd('\') + '\').StartsWith($allowedRoot, [System.StringComparison]::OrdinalIgnoreCase)) {
        throw "OutputDir must be under launcher_project\\diagnostics: $OutputDir"
    }
}

if (Test-Path -LiteralPath $OutputDir) {
    throw "Refusing to reuse an existing capture directory: $OutputDir"
}

New-Item -ItemType Directory -Path $OutputDir | Out-Null
New-Item -ItemType Directory -Force -Path $adbUserHome | Out-Null
$previousAdbUserHome = $env:ANDROID_USER_HOME
$env:ANDROID_USER_HOME = $adbUserHome

function Save-AdbRead {
    param(
        [Parameter(Mandatory = $true)][string]$Name,
        [Parameter(Mandatory = $true)][string[]]$Arguments
    )

    $target = Join-Path $OutputDir ($Name + '.txt')
    $started = Get-Date -Format o
    @(
        "captured_at=$started"
        'command=adb -s <device> ' + ($Arguments -join ' ')
        ''
    ) | Set-Content -LiteralPath $target -Encoding utf8

    & $adb -s $Device @Arguments 2>&1 | Out-File -LiteralPath $target -Append -Encoding utf8
    "exit_code=$LASTEXITCODE" | Out-File -LiteralPath $target -Append -Encoding utf8
}

try {
    Save-AdbRead -Name '00_connection' -Arguments @('get-state')
    Save-AdbRead -Name '01_package' -Arguments @('shell', 'dumpsys', 'package', 'com.byd.launcher')
    Save-AdbRead -Name '02_package_path' -Arguments @('shell', 'pm', 'path', 'com.byd.launcher')
    Save-AdbRead -Name '03_activity' -Arguments @('shell', 'dumpsys', 'activity', 'activities')
    Save-AdbRead -Name '04_home_resolution' -Arguments @('shell', 'cmd', 'package', 'resolve-activity', '--brief', '-a', 'android.intent.action.MAIN', '-c', 'android.intent.category.HOME')
    Save-AdbRead -Name '05_service' -Arguments @('shell', 'dumpsys', 'activity', 'services', 'com.byd.launcher')
    Save-AdbRead -Name '06_meminfo' -Arguments @('shell', 'dumpsys', 'meminfo', 'com.byd.launcher')
    Save-AdbRead -Name '07_windows' -Arguments @('shell', 'dumpsys', 'window', 'windows')
    Save-AdbRead -Name '08_accessibility' -Arguments @('shell', 'dumpsys', 'accessibility')
    Save-AdbRead -Name '09_media_session' -Arguments @('shell', 'dumpsys', 'media_session')
    Save-AdbRead -Name '10_policy_control' -Arguments @('shell', 'settings', 'get', 'global', 'policy_control')
    Save-AdbRead -Name '11_processes' -Arguments @('shell', 'ps', '-A', '-o', 'PID,PPID,NAME,ARGS')
    Save-AdbRead -Name '12_logcat' -Arguments @('logcat', '-d', '-v', 'threadtime', '-b', 'main', '-b', 'system', '-b', 'events', '-b', 'crash')

    $pid = ((& $adb -s $Device shell pidof com.byd.launcher 2>$null) -join '').Trim()
    if ($pid -match '^\d+$') {
        Save-AdbRead -Name '13_launcher_threads' -Arguments @('shell', 'ps', '-T', '-p', $pid, '-o', 'PID,TID,NAME,CMD')
    }
    else {
        "launcher_pid_not_available=$pid" | Set-Content -LiteralPath (Join-Path $OutputDir '13_launcher_threads.txt') -Encoding utf8
    }

    @(
        "captured_at=$(Get-Date -Format o)"
        "device=$Device"
        "output_dir=$OutputDir"
        'operation=read-only ADB snapshot'
        'does_not_install_or_uninstall'
        'does_not_restart_or_force_stop'
        'does_not_clear_data_or_change_home'
        'does_not_write_settings_or_send_vehicle_commands'
    ) | Set-Content -LiteralPath (Join-Path $OutputDir 'README.txt') -Encoding utf8
}
finally {
    if ($null -eq $previousAdbUserHome) {
        Remove-Item Env:ANDROID_USER_HOME -ErrorAction SilentlyContinue
    }
    else {
        $env:ANDROID_USER_HOME = $previousAdbUserHome
    }
}

Write-Host "Read-only capture written to: $OutputDir"
