#!/bin/sh
# run Hugo in test mode on local interface
PORT=1313
# matches the first global interface, may not be "eth0" on some systems
IPADDR=`ip a show scope global | grep -m 1 'inet '| awk '{print $2}' | cut -d / -f1`

echo "Serving on: " $IPADDR ":" $PORT
# -v for verbose log output; 
# -D = Build including drafts, -F build including future dated content; 
hugo serve -v -D -F --disableFastRender --bind $IPADDR -p $PORT -b $IPADDR


