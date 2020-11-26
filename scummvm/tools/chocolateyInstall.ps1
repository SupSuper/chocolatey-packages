$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = 'scummvm'
  fileType      = 'exe'
  softwareName  = 'ScummVM*'

  url           = 'https://downloads.scummvm.org/frs/scummvm/2.2.0/scummvm-2.2.0-win32.exe'
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  validExitCodes= @(0)

  checksum      = '336936766c36ddef6a05f9b3f932d0c2d83bb25049cad2e6f9e32caa315a9ba7'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
