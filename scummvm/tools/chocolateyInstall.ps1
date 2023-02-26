$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = 'scummvm'
  fileType      = 'exe'
  softwareName  = 'ScummVM*'

  url           = 'https://downloads.scummvm.org/frs/scummvm/2.7.0/scummvm-2.7.0-win32.exe'
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  validExitCodes= @(0)

  checksum      = '225d5c369938446dfd1c5b6e100aa5ec96c57bc33ee50f9c49c76ccde93e4e84'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
