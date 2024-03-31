$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = 'scummvm'
  fileType      = 'exe'
  softwareName  = 'ScummVM*'

  url           = 'https://downloads.scummvm.org/frs/scummvm/2.8.1/scummvm-2.8.1-win32.exe'
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  validExitCodes= @(0)

  checksum      = '4fb0d9426465aa6b245871fbb268c903b9bf4aee91b01f3a54363369a682348e'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
