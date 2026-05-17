[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$ProfileName,

    [Parameter(Mandatory = $true)]
    [string]$ExtensionListPath
)

$ErrorActionPreference = 'Stop'

function Get-VSCodeCliPath {
    $codeCmd = Get-Command code.cmd -ErrorAction SilentlyContinue
    if ($codeCmd) {
        return $codeCmd.Source
    }

    $codeCommands = @(Get-Command code -All -ErrorAction SilentlyContinue)
    $cliCommand = $codeCommands | Where-Object { $_.Source -match 'bin[\\/]code(\.cmd)?$' } | Select-Object -First 1
    if ($cliCommand) {
        return $cliCommand.Source
    }

    throw 'VS Code CLI command `code.cmd` was not found. Install VS Code and enable the `code` command in PATH.'
}

$codeCliPath = Get-VSCodeCliPath

function Invoke-VSCodeCli {
    param(
        [Parameter(Mandatory = $true)]
        [string[]]$Arguments
    )

    $previousErrorActionPreference = $ErrorActionPreference
    $ErrorActionPreference = 'Continue'

    try {
        $output = & $codeCliPath @Arguments 2>&1
        $exitCode = $LASTEXITCODE
    }
    finally {
        $ErrorActionPreference = $previousErrorActionPreference
    }

    return [PSCustomObject]@{
        Output = @($output)
        ExitCode = $exitCode
    }
}

function Ensure-VSCodeProfile {
    $result = Invoke-VSCodeCli -Arguments @('--profile', $ProfileName, '--list-extensions')
    $outputText = ($result.Output | Out-String)

    if ($result.ExitCode -eq 0 -and $outputText -notmatch 'Profile .* not found') {
        return
    }

    if ($outputText -notmatch 'Profile .* not found') {
        return
    }

    $safeProfileName = $ProfileName -replace '[^a-zA-Z0-9.-]', '-'
    $bootstrapPath = Join-Path $env:TEMP "vscode-profile-bootstrap-$safeProfileName"
    New-Item -ItemType Directory -Force -Path $bootstrapPath | Out-Null

    Write-Host "Creating VS Code profile '$ProfileName' using bootstrap folder: $bootstrapPath"
    $createResult = Invoke-VSCodeCli -Arguments @('--profile', $ProfileName, '--new-window', $bootstrapPath)

    if ($createResult.Output) {
        $createResult.Output | ForEach-Object { Write-Host $_ }
    }
}

if (-not (Test-Path -Path $ExtensionListPath)) {
    throw "Extension list not found: $ExtensionListPath"
}

$extensions = Get-Content -Path $ExtensionListPath |
    ForEach-Object { $_.Trim() } |
    Where-Object { $_ -and -not $_.StartsWith('#') }

if (-not $extensions) {
    Write-Host "No extensions found in $ExtensionListPath"
    exit 0
}

function Get-InstalledExtensions {
    $result = Invoke-VSCodeCli -Arguments @('--profile', $ProfileName, '--list-extensions')

    if ($result.ExitCode -ne 0) {
        return @()
    }

    return @($result.Output | Where-Object { $_ -is [string] })
}

Ensure-VSCodeProfile

Write-Host "Installing $($extensions.Count) extensions into VS Code profile '$ProfileName'..."

foreach ($extension in $extensions) {
    $installedBefore = Get-InstalledExtensions
    if ($installedBefore -contains $extension) {
        Write-Host "Already installed: $extension"
        continue
    }

    Write-Host "Installing $extension"
    $installResult = Invoke-VSCodeCli -Arguments @('--profile', $ProfileName, '--install-extension', $extension, '--force')
    $installOutput = $installResult.Output
    $installExitCode = $installResult.ExitCode

    if ($installOutput) {
        $installOutput | ForEach-Object { Write-Host $_ }
    }

    $installedAfter = Get-InstalledExtensions
    if ($installedAfter -contains $extension) {
        Write-Host "Installed: $extension"
        continue
    }

    if ($installExitCode -ne 0) {
        throw "Failed to install extension '$extension' into profile '$ProfileName'. VS Code CLI exit code: $installExitCode."
    }

    throw "Extension '$extension' was not found in profile '$ProfileName' after installation."
}

Write-Host "Done. Profile '$ProfileName' is ready."