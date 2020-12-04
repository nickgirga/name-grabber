#!/bin/bash

if [ "$EUID" -ne 0 ]
    then echo "Please run as root or with sudo"
    exit
fi

# to-do: install needed dependencies before installing name-grabber

# create resource folder in /usr/share
mkdir -p /usr/share/name-grabber

# copy resources into newly created resource folder
cp -i ./name-grabber /usr/share/name-grabber/name-grabber
cp -i ./main.glade /usr/share/name-grabber/main.glade

# link name-grabber executable to the /usr/bin folder
if [ ! -f /usr/bin/name-grabber ]; then
    ln -s /usr/share/name-grabber/name-grabber /usr/bin/name-grabber
fi

# to-do: create launcher icon

#report to user that installation is complete
echo Installation complete!
