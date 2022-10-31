$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = 'scummvm'
  fileType      = 'exe'
  softwareName  = 'ScummVM*'

  url           = 'https://downloads.scummvm.org/frs/scummvm/2.6.1/scummvm-2.6.1-win32.exe'
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  validExitCodes= @(0)

  checksum      = '8be79b25c064ede2e7469d9d2f0693e5f6f05931b0a1ce1ae7a10a9abce06b2f'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
