import-module au

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
      "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
    }
    ".\scummvm.nuspec" = @{
      "\<releaseNotes\>.+" = "<releaseNotes>$($Latest.ReleaseNotes)</releaseNotes>"
    }
  }
}

function global:au_GetLatest {
  [xml]$sparkle = (Invoke-WebRequest -Uri 'https://www.scummvm.org/appcasts/macosx/release.xml').Content
  $enclosure = $sparkle.channel.item.enclosure | Where-Object { $_.{sparkle:os} -eq "windows"}

  $url = $enclosure.url
  $version = $enclosure.{sparkle:version}
  $releaseNotesUrl = $sparkle.channel.item.{sparkle:releaseNotesLink}

  $checksumUrl = "($url).sha256"
  $checksum = (Invoke-WebRequest -Uri $checksumUrl).Content

  @{
    URL32 = $url
    Version = $version
    ReleaseNotes = $releaseNotesUrl
    Checksum32 = $checksum
  }
}

update -ChecksumFor 32
