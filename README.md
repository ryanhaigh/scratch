# scratch #

Small scripts and other things which scratch an itch. Most of this will be useless to everyone else and much of it is probably broken.

## Scripts ##

**anyjpg2folder.py:** rename or copy any jpg files in your music collection to folder.jpg to allow media players to display cover art

**check-internet.sh:** check connectivity to an ip address and run set commands depending on whether the connection is up or down

**email-ip-address** queries online service for the public ip address of the host on which the script runs and emails the address via sendmail

**gdm-failure-snapshot.sh** take a photo using the webcam when there is a failed gdm login attempt

**move-all-windows-topleft.sh** uses wmctrl to move all windows to the top left of the screen and allows exclusions for things like panels etc - initially created for apps which don't reposition when a second monitor was disconnected and are off screen

**pdf-ocr.sh:** converts pdf to ppm and runs gocr to read the text in the pdf and output to a file

**reboot-router.sh:** expect script to interactively log in to a host/router and run a command (reboot at the moment)

**service-control.sh:** restarts init.d service based on the presence of a special file in a specific location

## Configuration Files ##

**AutoHotkey.ahk:** my autohotkey script for windows to add some behaviour found on linux systems as well as some of my own shortcuts

**bashrc:** my ~/.bashrc configuration including:

 - enables colour
 - enables autocompletion when using sudo
 - adds my bin directory to the PATH env variable
 - provides some helpers for git and a modified prompt to display the branch name
 - adds some aliases

**gitconfig:** my ~/.gitconfig which adds some aliases for displaying pretty logs in the terminal

