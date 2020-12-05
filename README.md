# Name Grabber
A tool to grab the name of a specified window at a set interval of time.

![screenshot_3.png](.screenshots/screenshot_3.png)
![screenshot_4.png](.screenshots/screenshot_4.png)

# Obtaining
You can clone the repository by running `git clone https://gitlab.com/nickgirga/name-grabber.git` in a terminal. You can also go to [Releases](https://gitlab.com/nickgirga/name-grabber/-/releases) and download a zip, tar.gz, tar.bz2, or tar of the source code. These compressed archives will give you the same files as cloning using git. If you downloaded a compressed archive, uncompress it. Then proceed to [Installation](#installation).

# Dependencies
 - [Python](https://www.python.org/)
 - [PyGObject](https://pypi.org/project/PyGObject/)
 - [xdotool](https://github.com/jordansissel/xdotool)
 - *any dependencies that the dependencies above require*

# Installation
Run `./install.sh` as superuser in the same working directory that contains `name-grabber`, `main.glade`, `name-grabber.desktop`, and the `res` folder. You can elevate privileges with `sudo ./install.sh` or `su` then `./install.sh`. This will place the resource files in `/usr/share/name-grabber`, create a link to the executable from `/usr/bin/name-grabber`, and create a link to the desktop file from `/usr/share/applications/name-grabber.desktop`. After the installer spits out `Installation complete!`, you can run `name-grabber` from anywhere or simply use the laucher icon named `Name Grabber`.

# Removal
Run `./uninstall.sh` as superuser. You can elevate privileges with `sudo ./uninstall.sh` or `su` then `./uninstall.sh`. It will remove the resource folder at `/usr/share/name-grabber`, the executable link created at `/usr/bin/name-grabber`, and the desktop file link created at `/usr/share/applications/name-grabber.desktop`. After the uninstaller spits out `Removal complete!`, all of Name Grabber's files aside from user generated ones should be removed.

# Usage
Before doing anything, you must select a window. Name Grabber won't let you do anything until a window is selected. Click `Select Window` and click the window you wish to monitor. After selecting a window, you can use the `Settings` expansion panel to change settings like how many characters to clip off the start or end, if any text should be added before or after, how long the delay for updating the file should be, and what file to save the window name to. After choosing the optimal settings for you music source, you can click `File` > `Save Preset` to save the settings as a preset for future use. Then click `Update File` to begin updating the file constantly.

Now if you launch Name Grabber, you will only need to select a window, click `File` > `Open Preset`, select your preset, and click `Update File` and you're already up and running.

If you would like OBS to start monitoring this file for an up-to-date music label on your stream, click the plus icon in the bottom left corner of OBS under the `Sources` panel. Then select `Text (FreeType 2)`. Make sure the `Create new` radio button is ticked and give it a recognizable name, like `Name Grabber`. Ensure the `Make source visible` checkbox is checked and click `OK`. Once in the `Properties for 'Text (FreeType 2)'` window, check the `Read from file` checkbox just below the main text field. Then scroll just a bit further down and click `Browse` in the `Text File (UTF-8 or UTF-16)` field. Navigate to where you set your `File Destination` and select the file you are creating using Name Grabber. Change any other settings you want and click `OK`. Verify the file is being kept up-to-date by making sure that the `Update File` button is depressed and that the progress bar is continually filling and resetting itself. As long as the file is being updated using Name Grabber, you have an updated music label.

Demonstration:
[![youtube_thumbnail.png](.screenshots/youtube_thumbnail.png)](https://www.youtube.com/watch?v=Fh68vm42QcE "View on YouTube")
