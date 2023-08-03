$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = 'scummvm'
  fileType      = 'exe'
  softwareName  = 'ScummVM*'

  url           = 'https://downloads.scummvm.org/frs/scummvm/2.7.1/scummvm-2.7.1-win32.exe'
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  validExitCodes= @(0)

  checksum      = '8a31b9869092abc6c62fed0c63b0e95fe6d382df4d8dd05c18ac35d402c83cad'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
