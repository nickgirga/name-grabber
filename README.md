# window-name-to-file
This script simply creates/updates `window-name.txt` in the specified directory at the interval of time that you set. This was intended to be used with OBS to update labels that show what music is playing in the web browser when all other methods fail.

![screenshot_0.png](.screenshots/screenshot_1.png)

# Obtaining
You can clone the repository by running `git clone https://gitlab.com/nickgirga/bootsplash-theme-pink.git` in a terminal. Since this is just a simple script with no additional resources packaged with it, it is not necessary to clone the whole repository. The `window-name-to-file` script in the repository's root directory should be sufficient.

# Dependencies
 - [python by the Python Software Foundation](https://www.python.org/)
 - [xdotool by Jordan Sissel](https://github.com/jordansissel/xdotool)
 - [zenity by GNOME](https://gitlab.gnome.org/GNOME/zenity)

# Installation
Simply run it... It's just a script, so it doesn't need any "installation". It should already be, but make sure it has the ability to be executed. There should be a checkbox for that in the file properties depending on your desktop environment and the file manager you use. If there is not one, you can make it executable by opening a terminal in the directory containing our script and running `chmod +x window-name-to-file`. After that is done, you should be able to launch it by running `./window-name-to-file`.

To launch our script from anywhere, we will need to put it in a `bin` directory. An easy way to do this is to open a terminal in the directory that currently contains our script and running `sudo mv ./window-name-to-file /usr/local/bin`. This will move the script into our `/usr/local/bin/` directory. You should now be able to run `window-name-to-file` from anywhere.

# Usage
Upon start, you will be asked to click on the desired window (using `xdotool`). After selecting your window, it will print the name back out to you. This is a great time to highlight the start or end of the window name to help count how many characters you may want to cut off. After pressing enter to continue, it will ask you if you wish to use a preset. Anything but a lowercase `n` will be interpreted as "yes", so if you simply press enter, it will ask you to select a `.gura` file containing your preset and then continue to the main loop. If you respond with `n`, it will ask you how many seconds it should pause before updating the `window-name.txt` file, then it will ask you if you want to clip any characters off the start or end, then it will ask if you want to add any text to the start or end, then it will ask where to save your `window-name.txt` file, then it will ask if you want to save those settings as a preset. Anything but a lowercase `y` will be interpreted as "no", so simply pressing enter will skip it. If you respond `y`, it will ask you where to save your new `.gura` file containing the settings you just input. It will immediately save after pressing `OK`. After saving (or not), it will continue to the main loop after pressing enter to continue.

Once the main loop starts, it will echo the `window-name.txt` location, the current window name, `Printed to file` for a brief moment when printing to `window-name.txt`, and some license info. You should be able to use a simple keyboard interrupt to stop the script at any point in time. This can be achieved by pressing `Ctrl+C`.

At any point in time—running or not—it is actually safe to delete `window-name.txt`. Data is only ever written TO this file, so if it gets deleted, a new one will be created upon the next iteration of the main loop. How long that is depends on your defined sleep time. Just make sure you have stopped monitoring `window-name.txt` with external programs. Those programs probably will throw a fit if you told them to read a file and it just disappears.
