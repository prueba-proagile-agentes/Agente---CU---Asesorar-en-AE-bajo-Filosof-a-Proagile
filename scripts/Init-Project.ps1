param(
    [Parameter(Mandatory = $true)][string]$ProjectId,
    [Parameter(Mandatory = $true)][string]$ProjectName,
    [Parameter(Mandatory = $true)][string]$Actor,
    [switch]$Apply
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$ProjectRoot = Split-Path -Parent $PSScriptRoot
$ValidActors = @("direccion", "gobierno-ia", "consultoria", "desarrollo", "comercial", "administracion")

if ($ValidActors -notcontains $Actor) {
    throw "Invalid actor '$Actor'. Valid actors: $($ValidActors -join ', ')"
}

$TokenFiles = @("AGENTS.md", "README.md", "agent-config.yaml")
$TokenMap = @{
    "{{PROJECT_ID}}"   = $ProjectId
    "{{PROJECT_NAME}}" = $ProjectName
    "{{ACTOR}}"        = $Actor
}
$RequiredPaths = @(
    "AGENTS.md",
    "README.md",
    "agent-config.yaml",
    ".gitignore",
    "INPUT.md",
    "agents/setup/AGENTS.md",
    "agents/setup/CONTEXT.md",
    "agents/setup/agent-config.yaml",
    "agents/generador/AGENTS.md",
    "agents/generador/CONTEXT.md",
    "agents/generador/agent-config.yaml",
    "agents/revisor/AGENTS.md",
    "agents/revisor/CONTEXT.md",
    "agents/revisor/agent-config.yaml",
    "output/README.md",
    "work/.gitkeep",
    "skills/README.md",
    "specs/index.md",
    "scripts/Link-Input.ps1",
    "scripts/Unlink-Input.ps1"
)

$script:MissingCount = 0

function Show-Summary {
    Write-Output "== Token replacement =="
    foreach ($RelativeFile in $TokenFiles) {
        $FilePath = Join-Path $ProjectRoot $RelativeFile
        if (-not (Test-Path -LiteralPath $FilePath -PathType Leaf)) {
            Write-Output "MISSING (cannot process): $RelativeFile"
            continue
        }
        $Text = [IO.File]::ReadAllText($FilePath)
        $Original = $Text
        foreach ($Token in $TokenMap.Keys) {
            $Text = $Text.Replace($Token, $TokenMap[$Token])
        }
        if ($Text -ne $Original) {
            Write-Output "CHANGED: $RelativeFile"
        }
        else {
            Write-Output "UNCHANGED (no pending tokens): $RelativeFile"
        }
    }

    Write-Output ""
    Write-Output "== Structure check =="
    $MissingCount = 0
    foreach ($RelativePath in $RequiredPaths) {
        if (-not (Test-Path -LiteralPath (Join-Path $ProjectRoot $RelativePath))) {
            Write-Output "MISSING: $RelativePath"
            $MissingCount++
        }
    }
    if ($MissingCount -eq 0) {
        Write-Output "All required paths present."
    }
    $script:MissingCount = $MissingCount
}

Show-Summary
$MissingCount = $script:MissingCount

$HasChanges = $false
foreach ($RelativeFile in $TokenFiles) {
    $FilePath = Join-Path $ProjectRoot $RelativeFile
    if (-not (Test-Path -LiteralPath $FilePath -PathType Leaf)) { continue }
    $Text = [IO.File]::ReadAllText($FilePath)
    $Original = $Text
    foreach ($Token in $TokenMap.Keys) {
        $Text = $Text.Replace($Token, $TokenMap[$Token])
    }
    if ($Text -ne $Original) {
        $HasChanges = $true
        if ($Apply) {
            $Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
            [IO.File]::WriteAllText($FilePath, $Text, $Utf8NoBom)
        }
    }
}

Write-Output ""
if (-not $Apply) {
    $Pending = if ($HasChanges) { "Sin aplicar. Usa -Apply para escribir." } else { "Nada pendiente de aplicar." }
    Write-Output "Dry-run: $Pending"
}
else {
    Write-Output "Aplicado. No se ejecuto git: revisa y commitea la persona."
}

if ($MissingCount -gt 0) { exit 1 }
exit 0
