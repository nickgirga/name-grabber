# window-name-to-file
This script simply creates and/or updates `window-name.txt` in the working directory at a set interval of time. This was intended to be used with OBS to update labels that show what music is playing in the web browser when all other methods fail.

# Obtaining
You can clone the repository by running `git clone https://gitlab.com/nickgirga/bootsplash-theme-pink.git` in a terminal. Since this is just a simple script with no additional resources packaged with it, it is not necessary to clone the whole repository. The `window-name-to-file` script in the repository's root directory should be sufficient.

# Dependencies
 - [xdotool by Jordan Sissel](https://github.com/jordansissel/xdotool)

# Installation
Simply run it... It's just a script, so it doesn't need any "installation". It should already be, but make sure it has the ability to be executed. There should be a checkbox for that in the file properties depending on your desktop environment and the file manager you use. If there is not one, you can make it executable by opening a terminal in the directory containing our script and running `sudo chmod +x window-name-to-file`. After that is done, you should be able to launch it by running `./window-name-to-file`.

To launch our script from anywhere, we will need to put it in a `bin` directory. An easy way to do this is to open a terminal in the directory that currently contains our script and running `sudo mv ./window-name-to-file /usr/local/bin`. This will move the script into our `/usr/local/bin/` directory. You should now be able to run `window-name-to-file` from anywhere.

# Usage
Running our script after placing it in `/usr/local/bin` will cause the `window-name.txt` to be generated wherever the terminal was opened from (likely the home directory). To generate it elsewhere, simply `cd` to the directory you want it to go in and then run it. Many file managers give you the option to "Open Terminal Here" when right-clicking on empty space in your desired folder. I find this to be the simplest way to generate `window-name.txt` in a specific directory.

Upon start, you will be asked to click on the desired window (using `xdotool`). After selecting your window, it will ask you how many seconds you would like it to sleep before checking the window and printing it to `window-name.txt`. I've found 1-5 to be good. Once the sleep time has been defined, `window-name-to-file` will start its main loop. It will echo the `window-name.txt` location, the current window name, `Printed to file` for a brief moment when printing to `window-name.txt`, and some license info. You should be able to use a simple keyboard interrupt to stop the script at any point in time. This can be achieved by pressing `Ctrl+C`.

At any point in time—running or not—it is actually safe to delete `window-name.txt`. Data is only ever written TO this file, so if it gets deleted, a new one will be created upon the next iteration of the main loop. How long that is depends on your defined sleep time. Just make sure you have stopped monitoring `window-name.txt` with external programs. Those programs probably will throw a fit if you told them to read a file and it just disappears.