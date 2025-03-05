param(
    [Parameter(Mandatory=$true)]
    [string]$MissionPath,
    [switch]$DebugMode
)

# Hardcoded GitHub credentials for PAT authentication
$GitUser = "ShrikeKMF"
$GitToken = "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"

$gitPath = "C:\Program Files\Git\bin\git.exe"
if (-not (Test-Path $gitPath)) {
    Write-Host "Git is not installed. Please install Git first."
    exit
}

# Correcting the Git remote URL by enclosing variables in ${} to ensure correct interpretation
$gitRemoteUrl = "https://${GitUser}:${GitToken}@github.com/ShrikeKmF/RTG-Mission-Sync.git"

if ($DebugMode) {
    Write-Host "Debug Mode: Watching mission folder: $MissionPath"
}

while ($true) {
    $changes = Get-ChildItem $MissionPath -Recurse | Where-Object { $_.LastWriteTime -gt (Get-Date).AddSeconds(-30) }
    if ($changes.Count -gt 0) {
        if ($DebugMode) { Write-Host "Changes detected in the mission folder." }
        Push-Location $MissionPath
        & $gitPath remote set-url origin $gitRemoteUrl
        & $gitPath add .
        & $gitPath commit -m "Auto-sync mission updates" 2>$null
        & $gitPath push origin main
        Pop-Location
        if ($DebugMode) { Write-Host "Git sync completed." }
    }
    Start-Sleep -Seconds 30
}
