﻿try {

    $packageName = "sweet-home-3d"
    $fileType = "exe"
    $silentArgs = "/VERYSILENT"
    $validExitCodes = @(0)
    
    $unfile = "${Env:ProgramFiles}\Sweet Home 3D\unins000.exe"
    $unfilex86 = "${Env:ProgramFiles(x86)}\Sweet Home 3D\unins000.exe"
    
    if (Test-Path "$unfile") {$file = "$unfile"}
    if (Test-Path "$unfilex86") {$file = "$unfilex86"}
    
    if ((Test-Path "$unfile") -or (Test-Path "$unfilex86")) {
        Uninstall-ChocolateyPackage $packageName $fileType $silentArgs $file -validExitCodes $validExitCodes
    }
    
    Write-ChocolateySuccess $packageName
} catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}