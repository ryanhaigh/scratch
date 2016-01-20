#!/bin/bash

#restart a init.d service based on the existance of a file in a users
#home directory

SERVICE=ddclient
USERNAME=ryanhaigh

while [ 1 ]
do
sleep 2
if [ -f /home/$USERNAME/.restart$SERVICE ]; then
echo "file found restarting $SERVICE"
/etc/init.d/$SERVICE restart && rm /home/$USERNAME/.restart$SERVICE
else
echo "file not found looping"
fi
done
