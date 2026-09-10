param([string]$TargetPath)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"
$ProjectRoot = Split-Path -Parent $PSScriptRoot
$LinkPath = Join-Path $ProjectRoot "input"

if (Test-Path -LiteralPath $LinkPath) {
    $ExistingItem = Get-Item -Force -LiteralPath $LinkPath
    if ($ExistingItem.Attributes.HasFlag([IO.FileAttributes]::ReparsePoint)) {
        Write-Output "[OK] Input already points to an external location: $LinkPath"
        exit 0
    }
    throw "Input already exists and is not a link. It was not modified: $LinkPath"
}
if (-not $TargetPath) { $TargetPath = Read-Host "Paste the local path synchronized with Drive" }
if (-not $TargetPath) { throw "A target path is required." }
if (-not (Test-Path -LiteralPath $TargetPath -PathType Container)) {
    throw "The target directory does not exist: $TargetPath"
}
$ResolvedTarget = (Resolve-Path -LiteralPath $TargetPath).Path
$NormalizedProjectRoot = [IO.Path]::GetFullPath($ProjectRoot).TrimEnd("\")
$NormalizedTarget = [IO.Path]::GetFullPath($ResolvedTarget).TrimEnd("\")
if (($NormalizedTarget -eq $NormalizedProjectRoot) -or
    $NormalizedTarget.StartsWith("$NormalizedProjectRoot\", [StringComparison]::OrdinalIgnoreCase)) {
    throw "The target cannot be inside the project directory."
}
New-Item -ItemType Junction -Path $LinkPath -Target $ResolvedTarget | Out-Null
Write-Output "[OK] Input linked."
Write-Output "Link: $LinkPath"
Write-Output "Target: $ResolvedTarget"