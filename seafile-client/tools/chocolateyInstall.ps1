﻿$packageName = "seafile-client"
$fileType = "msi"
$silentArgs = "/passive"
$url = "http://seafile.googlecode.com/files/seafile-1.6.1-en.msi"

Install-ChocolateyPackage $packageName $fileType $silentArgs $url