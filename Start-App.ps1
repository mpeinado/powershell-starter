# Read-Host cmdlet - reads a line of input from the PowerShell Console
# PowerShell API https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/write-host?view=powershell-6

# Variables 
$CHROME = 1
$VS_CODE = 2

$PromptUserForApp = @"
################################################
    1: Chrome
    2: VS Code
############################################
Enter an application to start (1)
"@

Function Open-App($AppNum) {
    switch ($AppNum) {
        $CHROME {  
            Start-Process chromium-browser NoNewWindow
            Write-Host "Starting Chrom"
            break
        }
        $VS_CODE {
            Start-Process gedit -NoNewWindow
            Write-Host "Starting VS Code"
            break
        }
        Default {
            chromium-browser
        }
    }
}

# Clear the shell
Clear-Host

# Default to Chrome
$AppNum = 1

try {
    [int]$AppNum = Read-Host -Prompt $PromptUserForApp

    Write-Host $AppNum
} catch {
    Write-Error "Can't cast user input."
    # Debugging
}

# Call the Funciton to open the app 
Open-App $AppNum



