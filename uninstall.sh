#!/bin/bash

if [ "$EUID" -ne 0 ]
    then echo "Please run as root or with sudo"
    exit
fi

# remove resource folder and contents in /usr/share
rm -rf /usr/share/name-grabber/

# remove link to executable in the /usr/bin folder
rm -f /usr/bin/name-grabber

# to-do: remove launcher icon

#report to user that removal is complete
echo Removal complete!
