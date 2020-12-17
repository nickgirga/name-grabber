#!/bin/bash

# DO NOT USE IF INSTALLED USING pacman

# quit if not superuser
if [ "$EUID" -ne 0 ]
    then echo "Please run as superuser or with sudo"
    exit
fi

# remove resource folder and contents in /usr/share
rm -rf /usr/share/name-grabber/

# remove link to executable in the /usr/bin folder
rm -f /usr/bin/name-grabber

# remove launcher icon from /usr/share/applications
rm -f /usr/share/applications/name-grabber.desktop

#report to user that removal is complete
echo Removal complete!
