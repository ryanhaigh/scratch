#!/bin/bash
#bash script to query whatismyip.org and email the retrieved ip address to the
#specified email address
#requires that sendmail command works (tested with ssmtp+gmail)


to_email=haigh.ryan@gmail.com
from_email="Ryan Haigh <haigh.ryan@gmail.com>"

wget http://whatismyip.org/ -O /tmp/ip_address.html
address=`cat /tmp/ip_address.html`
rm /tmp/ip_address.html

current_date=`date`
sendmail -oi $to_email << EOF
From: $from_email
To: $to_email
Subject: Updated IP Address $current_date

New IP address is: $address

EOF


exit
