#!/usr/bin/expect -f
#expect script to login to router and rebooot it

#set required paramaters
set password PASSWORDGOESHERE
set ipaddr 10.1.1.1
set run_command reboot
set timeout -1

#connect to the ssh server on the router
spawn ssh root@$ipaddr $run_command
match_max 100000
#look for the password prompt
expect "*?assword:*"
#send the password
send -- "$password\r"
# send blank line (\r) to make sure we get back
send -- "\r"
expect eof

exit
