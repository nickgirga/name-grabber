# Name Grabber
A tool to grab the name of a specified window at a set interval of time.

![screenshot_3.png](.screenshots/screenshot_3.png)
![screenshot_4.png](.screenshots/screenshot_4.png)

# Obtaining
#### Arch Linux
Finished pkg.tar.zst packages created for Arch Linux using the makepkg system can be found under the [Releases](https://gitlab.com/nickgirga/name-grabber/-/releases) page. Simply download one using a web browser. If you wish to create this package yourself, downloading just the [PKGBUILD](https://gitlab.com/nickgirga/window-name-to-file/-/raw/master/PKGBUILD?inline=false) in the root directory of the repository should suffice. After you've acquired a pkg.tar.zst or PKGBUILD proceed to [Installation](#installation).

#### Else
You can clone the repository by running `git clone https://gitlab.com/nickgirga/name-grabber.git` in a terminal. You can also go to [Releases](https://gitlab.com/nickgirga/name-grabber/-/releases) and download a zip, tar.gz, tar.bz2, or tar of the source code. These compressed archives will give you the same files as cloning using git. If you downloaded a compressed archive, decompress it. Then proceed to [Installation](#installation).

# Dependencies
 - [Python](https://www.python.org/)
 - [PyGObject](https://pypi.org/project/PyGObject/)
 - [GTK3](https://www.gtk.org/)
 - [xdotool](https://github.com/jordansissel/xdotool)
 - *any dependencies that the dependencies above require*

# Installation
#### Arch Linux
If using a pkg.tar.zst package, simply run `pacman -U $PACKAGE_NAME.pkg.tar.zst` as superuser in the same directory as the pkg.tar.zst file after replacing `$PACKAGE_NAME` with your pkg.tar.zst file's name. You can elevate privileges using `sudo` or `su`. You may also open the file using a GUI software center such as [pamac](https://gitlab.manjaro.org/applications/pamac) to install it easily. If you wish to create this package yourself, run `makepkg -si` in the same directory as the `PKGBUILD`. This will construct the package and prompt you to install it using `pacman -U`. You should now be able to launch the application using the `Name Grabber` launcher icon or by running `name-grabber` in a terminal. **DO NOT** use the `install.sh` and `uninstall.sh` scripts once you start installing `name-grabber` using `pacman`.

#### Else
Run `./install.sh` as superuser in the same working directory that contains `name-grabber`, `main.glade`, `name-grabber.desktop`, and the `res` folder. You can elevate privileges using `sudo` or `su`. This will place the resource files in `/usr/share/name-grabber`, create a link to the executable from `/usr/bin/name-grabber`, and create a link to the desktop file from `/usr/share/applications/name-grabber.desktop`. After the installer spits out `Installation complete!`, you should be able to launch the application using the `Name Grabber` launcher icon or by running `name-grabber` in a terminal.

# Removal
#### Arch Linux
If installed using a pkg.tar.zst package (or you created this package yourself using the PKGBUILD), simply run `pacman -R name-grabber` as superuser. You may also search for `name-grabber` using a GUI software center such as [pamac](https://gitlab.manjaro.org/applications/pamac) to uninstall it easily. If you used the PKGBUILD, be sure to delete all of the directories and files that were created when running `makepkg` as `pacman` will not remove these. **DO NOT** use the `install.sh` and `uninstall.sh` scripts once you start installing `name-grabber` using `pacman`.

#### Else
Run `./uninstall.sh` as superuser. You can elevate privileges using `sudo` or `su`. It will remove the resource folder at `/usr/share/name-grabber`, the executable link created at `/usr/bin/name-grabber`, and the desktop file link created at `/usr/share/applications/name-grabber.desktop`. After the uninstaller spits out `Removal complete!`, all of Name Grabber's files aside from user generated ones should be removed.

# Usage
Before doing anything, you must select a window. Name Grabber won't let you do anything until a window is selected. Click `Select Window` and click the window you wish to monitor. After selecting a window, you can use the `Settings` expansion panel to change settings like how many characters to clip off the start or end, if any text should be added before or after, how long the delay for updating the file should be, and what file to save the window name to. After choosing the optimal settings for you music source, you can click `File` > `Save Preset` to save the settings as a preset for future use. Then click `Update File` to begin updating the file constantly.

Now if you launch Name Grabber, you will only need to select a window, click `File` > `Open Preset`, select your preset, and click `Update File` and you're already up and running.

If you would like OBS to start monitoring this file for an up-to-date music label on your stream, click the plus icon in the bottom left corner of OBS under the `Sources` panel. Then select `Text (FreeType 2)`. Make sure the `Create new` radio button is ticked and give it a recognizable name, like `Name Grabber`. Ensure the `Make source visible` checkbox is checked and click `OK`. Once in the `Properties for 'Text (FreeType 2)'` window, check the `Read from file` checkbox just below the main text field. Then scroll just a bit further down and click `Browse` in the `Text File (UTF-8 or UTF-16)` field. Navigate to where you set your `File Destination` and select the file you are creating using Name Grabber. Change any other settings you want and click `OK`. Verify the file is being kept up-to-date by making sure that the `Update File` button is depressed and that the progress bar is continually filling and resetting itself. As long as the file is being updated using Name Grabber, you have an updated music label.

Demonstration:
[![youtube_thumbnail.png](.screenshots/youtube_thumbnail.png)](https://www.youtube.com/watch?v=Fh68vm42QcE "View on YouTube")
