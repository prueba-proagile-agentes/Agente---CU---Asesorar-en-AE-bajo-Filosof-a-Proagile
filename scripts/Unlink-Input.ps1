param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"
$ProjectRoot = Split-Path -Parent $PSScriptRoot
$LinkPath = Join-Path $ProjectRoot "input"

if (-not (Test-Path -LiteralPath $LinkPath)) {
    Write-Output "[OK] Input link does not exist."
    exit 0
}
$ExistingItem = Get-Item -Force -LiteralPath $LinkPath
if (-not $ExistingItem.Attributes.HasFlag([IO.FileAttributes]::ReparsePoint)) {
    throw "Input is not a link and was not removed: $LinkPath"
}
if ($ExistingItem.LinkType -ne "Junction") {
    throw "Only junctions created by Link-Input.ps1 can be removed safely."
}
$ExistingItem.Delete()
Write-Output "[OK] Input link removed. The target directory was not modified."