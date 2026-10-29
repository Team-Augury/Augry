$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'msi'
  url64bit       = 'https://github.com/Team-Augury/Augry/releases/download/v0.7.0/Augry_0.7.0_x64_en-US.msi'
  checksum64     = '892c9050e8eef4e84a1cecd872fa7117f8a950420f0289173daa3fdae19e487b'
  checksumType64 = 'sha256'
  silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($env:ChocolateyPackageName).$($env:ChocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
