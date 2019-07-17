## Useful commands

Get-Command 
* Get-Command -verb get
* Get-Command -noun service

Get-help
* Get-Help dir

Start-Transcript
* Start-Transcript -Path '~/path/transcript.txt 

Install Version of PowerShell
* $PSVersionTable.PSVersion

## Running a PowerShell script on a schedule 

### Windows Task Scheduler (Windows)

### Cron Job (Linux)
A scheduled task that runs regularly.

Time-based job scheduler in Unix-like operating systems 

* Install cron
apt-get install cron 

* check if  cron is running
systemctl status cron

#### Setup a cron job
view cron jobs - gedit /etc/crontab

crontab -e : edit/add cron jobs

crontab -l : see cron jobs

5 21 * * * /home/marco/develop/powershell-starter/helloWorld.ps1

pwsh &  /home/marco/develop/powershell-starter/helloWorld.ps1

### Syntax
* * * * * /path/to/command arg1 arg2

* First *  | minutes 0-59
* Second * | hour 0-23
* Third *  | day 0-31
* Fourth * | month 0-12
* Fifth *  | day of the week 0-7

### Cron Logs
* /var/log

* gedit cron

* search for cron 
#### References
[Getting started with cron jobs](https://www.geeksforgeeks.org/how-to-setup-cron-jobs-in-ubuntu/)

## Functions
{verb}-{noun}
* Write-Host
* Start-Service


## Documentation
[Tutorials Point](https://www.tutorialspoint.com/powershell/index.htm)

[PowerShell 6 Docs](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.host/start-transcript?view=powershell-6)

[PoweShell with VS Code](https://docs.microsoft.com/en-us/powershell/scripting/components/vscode/using-vscode?view=powershell-6)

[Learning PowerShell](https://github.com/PowerShell/PowerShell/tree/master/docs/learning-powershell)

[PowerShell Beginner's Guide](https://github.com/PowerShell/PowerShell/blob/master/docs/learning-powershell/powershell-beginners-guide.md)

[Functions](https://blogs.msdn.microsoft.com/koryt/2018/02/15/powershell-for-programmers-how-to-write-a-function-the-right-way/)