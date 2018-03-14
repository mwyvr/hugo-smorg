#!/bin/sh
# run Hugo in dev mode on an externally accessible interface (not localhost)
PORT=1313
# matches first global interface, may not be "eth0" on some systems
IPADDR=`ip a show scope global | grep -m 1 'inet '| awk '{print $2}' | cut -d / -f1`

BASEURL="http://$IPADDR:$PORT"

echo "Serving on: " $IPADDR ":" $PORT " baseURL: " $BASEURL
# -v verbose log output
# -D build including drafts 
# -F build including future dated content 
# --disableFastRender enable full re-render on changes
# --renderToDisk because you want to
hugo server -v -D -F --disableFastRender --forceSyncStatic --renderToDisk \
	--bind $IPADDR -p $PORT --baseURL $BASEURL 
