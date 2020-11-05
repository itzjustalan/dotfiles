#profile.ps1
#nov-02-2020
#AlanKJOhn



#PowerLine setup

#fonts supporting poerline have to be specified in the emulator

Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
Write-Host "Get-Member"
Write-Host ""
#####################################################################

#setting starting location

set-location g:\work\temp\work\
#####################################################################

#Setting shell window title

#$Shell.WindowTitle="spaceBoo"
#####################################################################

#Change the window size and scrollback with the following:

#$Shell = $Host.UI.RawUI
#$size = $Shell.WindowSize
#$size.width=70
#$size.height=25
#$Shell.WindowSize = $size
#$size = $Shell.BufferSize
#$size.width=70
#$size.height=5000
#$Shell.BufferSize = $size
#$shell.BackgroundColor = "Gray"
#$shell.ForegroundColor = "Black"
#####################################################################

#Clear Screen

#Clear-Host
#####################################################################

# functions
function gitStatus () {
    git status
}
function gitAddAll () {
    git add -A
}

function gitCommit ([string]$message) {
    git commit -m "$message"
}

function mkcdir ([Parameter(Mandatory = $true)][string]$path) {
    New-Item -ItemType "directory" -Path ".\$path"
    Set-Location -Path ".\$path"
}
#####################################################################

#git aliases
Set-Alias gs gitStatus
Set-Alias ga gitAddAll
Set-Alias cm gitCommit
Set-Alias cdd "cd ../"
Set-Alias ls "ls -Force"
Set-Alias mkcdir mkcdir
Set-Alias pax C:\Users\alanj\Documents\WindowsPowerShell\myscripts\pushBuildExit.ps1

#####################################################################
