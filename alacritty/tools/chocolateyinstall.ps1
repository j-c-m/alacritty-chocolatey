$ErrorActionPreference = 'Stop';

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = 'https://github.com/jwilm/alacritty/releases/download/v0.2.9/Alacritty-v0.2.9-windows.zip'
  checksum      = '7edceed0ab442d746addf161a8310342c265d5ec95c23a689b13e4039f473359'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
