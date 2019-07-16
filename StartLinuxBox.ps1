<#

.SYNOPSIS
This is a simple Powershell script to explain how to create help

.DESCRIPTION
The script itself will only print 'Hello World'. But that's cool. It's main objective is to show off the cool help thingy anyway.

.EXAMPLE
./HelloWorld.ps1
Get-Help ./HelloWorld.ps1

.NOTES
Put some notes here.

.LINK
http://example.com

#>

# See Docs - Get-Help ./StartLinuxBox.ps1  
# Open Google Chrome
Write-Host '##### Starting Google Chrome #####'

$url = 'gmail.com'
try {
  Start-Process chromium-browser $url -cleardfsdWait
}
catch {
    $ErrorMessage = $_.Exception.Message
    Write-Host 'ERROR: Could not open Google Chrome'
}

Write-Host '##### VS Code #####'
try {
    code
} catch {
    $ErrorMessage = $_.Exception.Message
    Write-Host 'ERROR: Could not open gEdit'
}
