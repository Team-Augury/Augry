$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'msi'
  url64bit       = 'https://github.com/Team-Augury/Augry/releases/download/v0.6.5/Augry_0.6.5_x64_en-US.msi'
  checksum64     = 'ed2dcf7cd89b2e17326d18d97bd775a68026d1ae3e9a73997b5d918eda9bf998'
  checksumType64 = 'sha256'
  silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($env:ChocolateyPackageName).$($env:ChocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
