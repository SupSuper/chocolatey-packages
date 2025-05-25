$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = 'scummvm'
  fileType      = 'exe'
  softwareName  = 'ScummVM*'

  url           = 'https://downloads.scummvm.org/frs/scummvm/2.9.1/scummvm-2.9.1-win32.exe'
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  validExitCodes= @(0)

  checksum      = 'c9fe69f6ff6dc31932045daf5f5aecb0a92ab263a53e3ad9dc44f74505a8fb5a'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
