##############################################################################################
# Load PowerShell Profile .profile.ps1 - https://github.com/jhuntdog/dotfiles
# Called from C:\Users\<username>\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
##############################################################################################

##-------------------------------------------
## Start
##-------------------------------------------
Write-Host -ForegroundColor Magenta "Jason Powershell Engage"

# Start Loading message
Write-Host -ForegroundColor DarkGreen "--> Begin all the things..."

# Environment Loading message
Write-Host -ForegroundColor DarkGreen "--> Setup PowerShell Environment..."

##-------------------------------------------
## Create the default drives to common paths
##-------------------------------------------
New-PSDrive -name Repository -psprovider FileSystem -root $Home\OneDrive\Repository | Out-Null
New-PSDrive -name Tools -psprovider FileSystem -root $Home\OneDrive\Tools | Out-Null
New-PSDrive -name Modules -psprovider FileSystem -root $Home\Documents\WindowsPowerShell\Modules | Out-Null

##-------------------------------------------
## Load default script libraries
##-------------------------------------------
Get-ChildItem -Path "Tools:\PowerShellScripts\" -Recurse -Filter *.ps1 | ForEach-Object {. $_.FullName} | Out-Null

##-------------------------------------------
## Goto repository folder
##-------------------------------------------
#Set-Location Repository:

##-------------------------------------------
## Load up Posh-Git from github app
##-------------------------------------------
. (Resolve-Path "$env:LOCALAPPDATA\GitHub\shell.ps1")
. $env:github_posh_git\profile.example.ps1
