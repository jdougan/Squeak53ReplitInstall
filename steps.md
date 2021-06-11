Loading squeak on Repl.it
==========================

* Light up a new repl, type Nix.
  * Others might work, but untested.
  * can also fork my dev repl.
* go to the shell prompt
  * wget https://files.squeak.org/5.3/Squeak5.3-19435-64bit/Squeak5.3-19435-64bit-202003021730-Linux.zip 
  * unzip  Squeak5.3-19435-64bit-202003021730-Linux.zip
  * mv Squeak5.3-19435-64bit-202003021730-Linux sq
  * These steps are in the install.sh script
* Test at the shell prompt
  * cd sq
  * sh ./squeak.sh
  * This should bring up the repl.it VNC session running the squeak image
  * drag the window pane edges around to change the size of the vnc area.
* exit squeak
* edit file .replit
  * run = "(cd sq ; ./bin/squeak ./shared/Squeak5.3-19435-64bit.image)"
* Test by hitting the run button.
* There is (if you aren't a paying customer) a timeout system for inactive repls. So save frequently or get one of the browser plugins that will keep events going at it to keep the session alive. This is used to run alot of discord bots.
* With a free account you are limited to around 500MB, you may want to delete the zip file to regain some space.