$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = 'scummvm'
  fileType      = 'exe'
  softwareName  = 'ScummVM*'

  url           = 'https://downloads.scummvm.org/frs/scummvm/2.5.1/scummvm-2.5.1-win32.exe'
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  validExitCodes= @(0)

  checksum      = 'e5e15c06d5d5c2f96c7c900e9e4a512390ca2a569e2f3a13667cdb09c87c3ce0'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
