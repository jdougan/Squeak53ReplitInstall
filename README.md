Squeak 5.3 Repl.it Install 2.0
===============================
John Dougan <jdougan@acm.org>

* This file on Repl.it: https://replit.com/@jdougan1/Squeak53ReplitInstall#README.md
* This file on Github: https://github.com/jdougan/Squeak53ReplitInstall/blob/master/README.md

After seeing the GNU Smalltalk installation for Repl.it ( https://replit.com/@YoussefEl17/Smalltalk forked from https://replit.com/@ConnorBrewster/Zig ) I was wondering if I could get a recent Squeak running.

How hard could it possibly be?

This uses Nix, because that is what the GST installation used and it looks to be the easiest way to get any needed extra support tools installed as explained in https://blog.replit.com/nix and https://docs.replit.com/repls/nix .
Unfortunately the Nix installation of Squeak claims to be a 4.10.2.2614(?) that comes without image, changes, or source files.
I got it to work but I wasn't happy with it, so I just brute forced the issue by downloading the Squeak 5.3 installation from https://files.squeak.org . 

There is a timeout system for "inactive" repls with an optional auto restart feature if you are paying
(https://docs.replit.com/repls/always-on).
So save frequently or get one of the apps/code that will keep events going at it to keep the session alive.
This is used to run a lot of discord bots.

With a free account you are limited to around 500MB, you may want to delete the zip file to regain some space.
Warning: the "Download as zip" option will skip the Squeak installation files!

This installer relies on Repl.it's built in VNC support, see https://docs.replit.com/repls/vnc for details.
No audio by default, but it can be done via PulseAudio, see https://docs.replit.com/repls/audio .
Warning: If the repl is public it is possible to watch what is happening. Keep secrets in environment variables.

Building this repl
-------------------
* Fork this repl
* Go to the shell prompt
  * make conf-gui # sets up replit run command
  * make all   # downloads and unzips distribution
  * make install  # cp files to final locations
* Test at the shell prompt
  * make teststart
  * This should show the Repl.it VNC session running the squeak image. You may need to drag the panes around to see it.
  * Drag the VNC window pane edges to change the size of the VNC area.
* Exit Squeak
* Test again by hitting the run button.
* The run button should change to show it is running, hit it again to terminate Squeak. 
* Useful make productions
  * make clean    # deletes the download and the unzipped dir
  * make uninstall # deletes the files installed by make install 
  * make realclean  # scrubs it down to the bare metal, except saved .images, .changes, and .st  scripts
  * make squeak-clean  # delete squeak cache files and directories
  * make conf-script  # overwrite .replit with config to start running the main.st script while headless 
    * run = "./bin/squeak -vm-display-null -vm-sound-null  scripting.image"
  * make conf-gui  # overwrite .replit with config to run in GUI mode via the VNC session
    * run = "./bin/squeak -vm-display-X11 -vm-sound-null  scripting.image "

Snippits
--------
```
run = "./bin/squeak -vm-display-X11 -fullscreen -vm-sound-null  scripting.image "

run = "./bin/squeak -vm-display-X11 -fullscreen -vm-sound-pulse  Squeak5.3-19435-64bit.image "
```
-- 
John Dougan <jdougan@acm.org>