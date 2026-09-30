param(
    [string]$HomeDirectory = [Environment]::GetFolderPath('UserProfile')
)

if ([Environment]::OSVersion.Platform -eq [PlatformID]::Win32NT) {
    $identity = [Security.Principal.WindowsIdentity]::GetCurrent()
    $isAdministrator = ([Security.Principal.WindowsPrincipal]$identity).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
    $developerMode = (Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock' -Name AllowDevelopmentWithoutDevLicense -ErrorAction SilentlyContinue).AllowDevelopmentWithoutDevLicense -eq 1

    if (-not ($isAdministrator -or $developerMode)) {
        throw 'Symbolic links require Windows Developer Mode or an administrator PowerShell session. Enable Developer Mode or run PowerShell as administrator, then run this script again.'
    }
}

#### AGENTS.md installation
$source = Join-Path $PSScriptRoot 'agents-md/AGENTS.md'
if (-not (Test-Path -LiteralPath $source -PathType Leaf)) {
    throw "Source file not found: $source"
}

$destinations = @(
    '.claude/CLAUDE.md'
    '.config/opencode/AGENTS.md'
    '.codex/AGENTS.md'
    '.copilot/copilot-instructions.md'
)

foreach ($relativePath in $destinations) {
    $destination = Join-Path $HomeDirectory $relativePath
    if (Test-Path -LiteralPath $destination -PathType Any -ErrorAction SilentlyContinue) {
        Write-Warning "Already exists; leaving unchanged: $destination"
        continue
    }

    try {
        $parent = Split-Path -Parent $destination
        New-Item -ItemType Directory -Path $parent -Force -ErrorAction Stop | Out-Null
        New-Item -ItemType SymbolicLink -Path $destination -Target $source -ErrorAction Stop | Out-Null
        Write-Output "Linked $destination -> $source"
    } catch {
        throw "Could not create symbolic link at ${destination}. On Windows, enable Developer Mode or run PowerShell as administrator. $($_.Exception.Message)"
    }
}
