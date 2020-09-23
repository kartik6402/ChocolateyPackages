# chocolatey-fastanswers.extension v0.0.2 by Bill Curran AKA BCURRAN3 - public domain

function Get-IsWin80{
$workstation=Get-IsWinWorkstation
if ($workstation -eq $false) {return $false}
$major=[Environment]::OSVersion.Version.Major
$minor=[Environment]::OSVersion.Version.Minor
if ($major -eq "6" -and $minor -eq "2") {return $true} else {return $false}
} 