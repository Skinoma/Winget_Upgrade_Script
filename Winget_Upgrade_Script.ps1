Write-Host "Available updates" -BackgroundColor "Green" -ForegroundColor "White"
winget upgrade

$ShouldUpgrade = ""
do {
  $ShouldUpgrade = Read-Host -Prompt "`nDo you want to upgrade all apps ? (Y/N)"
} until (@("Y", "y", "N", "n").Contains($ShouldUpgrade))

if (@("Y", "y").Contains($ShouldUpgrade)) {
  Write-Host "Upgrading all Apps" -BackgroundColor "Green" -ForegroundColor "White"
  winget upgrade --all --silent --accept-package-agreements --accept-source-agreements --force
  Read-Host "Done !`nPress any key to exit"
}