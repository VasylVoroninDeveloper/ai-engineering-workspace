[CmdletBinding()]
param(
    [string]$ProfileName = 'AI Workspace Lab',
    [string]$WorkspacePath = 'ai-workspace.code-workspace'
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

if (-not (Test-Path -Path $WorkspacePath)) {
    throw "Workspace file not found: $WorkspacePath"
}

& $codeCliPath --profile $ProfileName $WorkspacePath

if ($LASTEXITCODE -ne 0) {
    throw "Failed to open workspace '$WorkspacePath' with profile '$ProfileName'."
}