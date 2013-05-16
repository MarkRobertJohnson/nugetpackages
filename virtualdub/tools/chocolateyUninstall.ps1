$exeFileLink = "VirtualDub.lnk"
$desktop = [Environment]::GetFolderPath("Desktop")
if (Test-Path "$desktop\$exeFileLink") {Remove-Item "$desktop\$exeFileLink"}

$startMenu = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::StartMenu))
if (Test-Path "$startMenu\Programs\$exeFileLink") {Remove-Item "$startMenu\Programs\$exeFileLink"}

$binRoot = "$env:systemdrive\tools"

if (Test-Path "$binRoot\VirtualDub") {
    Remove-Item "$binRoot\VirtualDub" -recurse
}