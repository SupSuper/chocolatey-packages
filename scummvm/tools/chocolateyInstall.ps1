$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = 'scummvm'
  fileType      = 'exe'
  softwareName  = 'ScummVM*'

  url           = 'https://downloads.scummvm.org/frs/scummvm/2.8.0/scummvm-2.8.0-win32.exe'
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  validExitCodes= @(0)

  checksum      = 'fe6c5c829a8f68be780a122a4bf4dcf6ad92cb19eac4b742b638125a7d817639'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
