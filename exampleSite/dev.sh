#!/bin/sh
# run Hugo in dev mode on an externally accessible interface (not localhost)
PORT=1313
# matches first global interface, may not be "eth0" on some systems
IPADDR=`ip a show scope global | grep -m 1 'inet '| awk '{print $2}' | cut -d / -f1`

echo "Serving on: " $IPADDR ":" $PORT
# -v verbose log output
# -D build including drafts 
# -F build including future dated content; 
hugo server -v -D -F --bind $IPADDR -p $PORT -b $IPADDR
