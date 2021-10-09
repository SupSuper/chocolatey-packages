$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = 'scummvm'
  fileType      = 'exe'
  softwareName  = 'ScummVM*'

  url           = 'https://downloads.scummvm.org/frs/scummvm/2.5.0/scummvm-2.5.0-win32.exe'
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  validExitCodes= @(0)

  checksum      = 'de6dd29206ffca20d41f9186cd062b0aad3a9ba7e98366ec6e24d90372b3c75c'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
