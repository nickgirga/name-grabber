#!/bin/bash

# remove resource folder and contents in /usr/share
sudo rm -rf /usr/share/name-grabber/

# remove link to executable in the /usr/bin folder
sudo rm -f /usr/bin/name-grabber

# to-do: remove launcher icon

#report to user that removal is complete
echo Removal complete!
