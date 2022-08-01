$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = 'scummvm'
  fileType      = 'exe'
  softwareName  = 'ScummVM*'

  url           = 'https://downloads.scummvm.org/frs/scummvm/2.6.0/scummvm-2.6.0-win32.exe'
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  validExitCodes= @(0)

  checksum      = 'a01b3f92c8e03041596c3f8e3383a0d4a3ddec5af6407bdc9199f4dd1c497cb8'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
