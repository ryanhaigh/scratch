#/bin/bash
#checks syslog for gdm login failure and captures photo from webcam

while [ 1 == 1 ]
    do
        #if the quoted text is fount in the file
        if tail /var/log/syslog | grep gdm | grep -q "Couldn't authenticate user"
            #then capture an image (requires xawtv installed)
            then streamer -c /dev/video0 -b 16 -o /home/YOURUSERNAME/outfile.jpeg
        fi
    #wait 10 seconds before looking again
    sleep 10s
    done
