#!/usr/bin/python

#script to move all windows to the top left corner of the display
#using wmctrl

import os
import sys

#place items you don't want moved in this list
blacklist = ['applet','Panel','panel','avant','awn']

command1 = 'wmctrl -r '
windows = []
command2 = '-e 1,1285,0,-1,-1'

#the output of wmctrl -l has the hostname in it between
#the random stuff at the start and the window titles, get
#the hostname of the computer
host = os.popen('hostname').readline().strip() + ' '

#for all windows in the output of wmctrl -l -x
for window in os.popen('wmctrl -l -x').readlines():
    #check if it is in the blacklist
    for item in blacklist:
        if str(window).find(item) >= 0:
            print 'Window: '+window+' contains '+item+' in blacklist'
            window = ''
    #append to list of windows
    if window:
        windows.append(window.split(host)[1].strip())

print windows

#move all windows in the list using wmctrl
for window in windows:
    fullCommand = command1+' "'+window+'" '+command2
    #print fullCommand
    os.system(fullCommand)

sys.exit(0)
