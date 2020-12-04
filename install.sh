#!/bin/bash

# to-do: install needed dependencies before installing name-grabber

# create resource folder in /usr/share
sudo mkdir -p /usr/share/name-grabber

# copy resources into newly created resource folder
sudo cp -i ./name-grabber /usr/share/name-grabber/name-grabber
sudo cp -i ./main.glade /usr/share/name-grabber/main.glade

# link name-grabber executable to the /usr/bin folder
sudo ln -s /usr/share/name-grabber/name-grabber /usr/bin/name-grabber

# to-do: create launcher icon

#report to user that installation is complete
echo Installation complete!
