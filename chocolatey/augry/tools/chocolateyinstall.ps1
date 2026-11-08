$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'msi'
  url64bit       = 'https://github.com/Team-Augury/Augry/releases/download/v0.8.0/Augry_0.8.0_x64_en-US.msi'
  checksum64     = '7e2a10c7a63d6c6905e718a6bf8d1c551bd79c3c3c49f94338b41a1cd861af9f'
  checksumType64 = 'sha256'
  silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($env:ChocolateyPackageName).$($env:ChocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
