# Name Grabber
This program simply creates/updates `window-name.txt` in the specified directory at the interval of time that you set. This was intended to be used with OBS to update labels that show what music is playing in the web browser when all other methods fail.

![screenshot_3.png](.screenshots/screenshot_3.png)
![screenshot_4.png](.screenshots/screenshot_4.png)

# Obtaining
You can clone the repository by running `git clone https://gitlab.com/nickgirga/name-grabber.git` in a terminal. If you prefer to only grab needed files, download `name-grabber` and `main.glade`. This is enough to run the program, but if you wish to install it, you will need the `install.sh` script. Probably not a bad idea to grab the `uninstall.sh` script as well if you intend to install it.

# Dependencies
 - [Python](https://www.python.org/)
 - [PyGObject](https://pypi.org/project/PyGObject/)
 - [xdotool](https://github.com/jordansissel/xdotool)
 - *any dependencies that the dependencies above require*

# Installation
Make sure you have `sudo` installed and then run `./install.sh` in the same working directory that contains `name-grabber` and `main.glade`. This will place the resource files in `/usr/share/name-grabber` and create a link to the executable from `/usr/bin/name-grabber`. After the installer spits out `Installation complete!`, you can run `name-grabber` from anywhere. A launcher icon is currently being worked on, but has not been implemented yet.

If you do not have `sudo` installed and/or do not wish to install it, you can modify the script and remove all uses of `sudo` and simply run the script as the superuser using `su`.

# Usage
Before doing anything, you must select a window. Name Grabber won't let you do anything until a window is selected. Click `Select Window` and click the window you wish to monitor. After selecting a window, you can use the `Settings` expansion panel to change settings like how many characters to clip off the start or end, if any text should be added before or after, how long the delay for updating the file should be, and what file to save the window name to. After choosing the optimal settings for you music source, you can click `File` > `Save Preset` to save the settings as a preset for future use. Then click `Update File` to begin updating the file constantly.

Now if you launch Name Grabber, you will only need to select a window, click `File` > `Open Preset`, select your preset, and click `Update File` and you're already up and running.

If you would like OBS to start monitoring this file for an up-to-date music label on your stream, click the plus icon in the bottom left corner of OBS. Then select `Text (FreeType 2)`. Make sure the `Create new` radio button is ticked and give it a recognizable name, like `Name Grabber`. Ensure the `Make source visible` checkbox is checked and click `OK`. Once in the `Properties for 'Text (FreeType 2)'` window, check the `Read from file` checkbox just below the main text field. Then scroll just a bit further down and click `Browse` in the `Text File (UTF-8 or UTF-16)` field. Navigate to where you set your `File Destination` and select `window-name.txt` (or whatever you may have renamed it). Change any other settings you want and click `OK`. Verify the file is being kept up-to-date by making sure that the `Update File` button is depressed and that the progress bar is continually filling and resetting itself. As long as the file is being updated using Name Grabber, you have an updated music label.

Demonstration:
[![youtube_thumbnail.png](.screenshots/youtube_thumbnail.png)](https://www.youtube.com/watch?v=Fh68vm42QcE "View on YouTube")
