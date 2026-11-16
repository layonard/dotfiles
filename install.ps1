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

$installations = @(
    # Shared instructions
    @{
        Source = 'agents-md/AGENTS.md'
        SourceType = 'Leaf'
        Destinations = @(
            '.claude/CLAUDE.md'
            '.config/opencode/AGENTS.md'
            '.codex/AGENTS.md'
            '.copilot/copilot-instructions.md'
        )
    }
    # Shared writing skill
    @{
        Source = 'skills/leo-writing-style'
        SourceType = 'Container'
        Destinations = @(
            '.claude/skills/leo-writing-style'
            '.config/opencode/skills/leo-writing-style'
            '.agents/skills/leo-writing-style'
            '.copilot/skills/leo-writing-style'
        )
    }
)

foreach ($installation in $installations) {
    $source = Join-Path $PSScriptRoot $installation.Source
    if (-not (Test-Path -LiteralPath $source -PathType $installation.SourceType)) {
        throw "Source not found: $source"
    }

    foreach ($relativePath in $installation.Destinations) {
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
}
