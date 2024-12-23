$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = 'scummvm'
  fileType      = 'exe'
  softwareName  = 'ScummVM*'

  url           = 'https://downloads.scummvm.org/frs/scummvm/2.9.0/scummvm-2.9.0-win32.exe'
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  validExitCodes= @(0)

  checksum      = '0f50ac5524f691b7c0f65a6ab9169cc7f1fe07e7dbe17a296bd3cfe3bfeccd12'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
