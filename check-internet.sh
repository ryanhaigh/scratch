#!/bin/bash
#script to check the status of a network connection and run specific commands
#depending on the state of the connection


#commands to run if connection up/down
command_down="echo connection down"
command_up="echo connection ok"

#ip/hostname to ping
ping_host=10.1.1.1

#time between tests in seconds
test_time=10

#loop forever
while [ 1 ];
do
    echo "pinging $ping_host"
    ping $ping_host -c 1

    #check the return code from the ping command 0 indicates success
    if [ $? != 0 ]
        then
        	echo "Connection down. Running $command_down"
        	$command_down
        else
            echo "Connection ok. Running $command_up"
            $command_up
    fi
    
    #sleep for the specified duration time the loop and check the re-test
    sleep $test_time
done
exit
