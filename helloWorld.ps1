# ./helloWorld.ps1

ls -l | Where-Object { $_.length -lt 100kb }

#Get-Process | Out-File -FilePath ~\develop\Foo.txt