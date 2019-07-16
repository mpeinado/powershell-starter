# ./helloWorld.ps1

ls -l | Where-Object { $_.length -lt 100kb }