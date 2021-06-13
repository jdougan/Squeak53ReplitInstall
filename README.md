Squeak 5.3 Repl.it Install
==========================
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
In later versions I want to make this run scripts headless or use the Squeak internal VNC server.

Loading Squeak on a Repl.it
----------------------------
* Light up a new repl, language Nix.
  * You can also fork my repl, it has installtion scripts.
    * https://replit.com/@jdougan1/Squeak53ReplitInstall
    * The install.sh and clean.sh scripts do these steps and the changes to .replit is already present
  * Other language srepls (bash, etc.) might work, but untested.
* Go to the shell prompt (These steps are in the install.sh script in the Squeak53ReplitInstall repl)
  * wget https://files.squeak.org/5.3/Squeak5.3-19435-64bit/Squeak5.3-19435-64bit-202003021730-Linux.zip 
  * unzip  Squeak5.3-19435-64bit-202003021730-Linux.zip
  * mv Squeak5.3-19435-64bit-202003021730-Linux sq
* Test at the shell prompt
  * cd sq
  * sh ./squeak.sh
  * This should show the Repl.it VNC session running the squeak image
  * Drag the VNC window pane edges to change the size of the VNC area.
* Exit Squeak
* Edit file .replit (This may already be done if you forked)
  * run = "(cd sq ; ./bin/squeak ./shared/Squeak5.3-19435-64bit.image)"
* Test again by hitting the run button.
* Thes running Squeak is shareable via VNC. 

-- 
John Dougan <jdougan@acm.org>