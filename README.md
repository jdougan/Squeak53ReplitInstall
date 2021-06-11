Squeak 5.3 Repl.it Install
==========================
This file: https://replit.com/@jdougan1/Squeak53ReplitInstall#README.md

After seeing the GNU Smalltalk installation for Repl.it ( https://replit.com/@YoussefEl17/Smalltalk forked from https://replit.com/@ConnorBrewster/Zig ) I was wondering if I could get a recent Squeak running.

How hard it could possibly be?

This uses Nix, because that is what the GST installation used and it looks to be the easiest way to get any needed support tools installed. ( https://docs.replit.com/repls/nix , https://blog.replit.com/nix )
Unfortunately the Nix installation of Squeak is a 4.10 that comes without images, changes, or sources.
I got it to work but I wasn't happy with it, so I just brute forced the issue by downloading the Squeak 5.3 installation from files.squeak.org. 

There is a timeout system for "inactive" repls (https://docs.replit.com/repls/always-on).
So save frequently or get one of the browser plugins that will keep events going at it to keep the session alive.
This is used to run alot of discord bots.

With a free account you are limited to around 500MB, you may want to delete the zip file to regain some space.
Also the download .zip option will skip the Squeak installation files!

This installer makes use of Repl.it's built in VNC support, see https://docs.replit.com/repls/vnc for details.
No audio by default, but it can be done vias PulseAudio, see https://docs.replit.com/repls/audio .
In later versions I want to make it run scripts headless or use the Squeak internal VNC server.

Loading squeak on Repl.it
-------------------------
* Light up a new repl, language Nix.
  * Other languages (bash, etc.) might work, but untested.
  * You can also fork my dev repl, it has installtion scripts.
    * https://replit.com/@jdougan1/Squeak53ReplitInstall
* go to the shell prompt (These steps are in the install.sh script in my repl)
  * wget https://files.squeak.org/5.3/Squeak5.3-19435-64bit/Squeak5.3-19435-64bit-202003021730-Linux.zip 
  * unzip  Squeak5.3-19435-64bit-202003021730-Linux.zip
  * mv Squeak5.3-19435-64bit-202003021730-Linux sq
* Test at the shell prompt
  * cd sq
  * sh ./squeak.sh
  * This should bring up the repl.it VNC session running the squeak image
  * drag the window pane edges around to change the size of the vnc area.
* exit squeak
* edit file .replit (This may already be done)
  * run = "(cd sq ; ./bin/squeak ./shared/Squeak5.3-19435-64bit.image)"
* Test again by hitting the run button.

-- 
John Dougn jdougan@acm.org