#!/usr/bin/make
#
#
#
#
SHELL = /bin/sh
#
all: archive/Squeak5.3-19435-64bit-202003021730-Linux

install: Squeak5.3-19435-64bit.image

realclean :  uninstall clean squeak-clean
	rm -rf archive

clean: 
	rm -rf archive/Squeak5.3-19435-64bit-202003021730-Linux.zip
	rm -rf archive/Squeak5.3-19435-64bit-202003021730-Linux

uninstall:
	rm -rf bin shared squeak.sh locale  ./squeak.sh Squeak5.3-19435-64bit.image ./squeak.sh Squeak5.3-19435-64bit.changes SqueakV50.sources release-notes 
  
squeak-clean:
	rm -rf github-cache package-cache SqueakDebug.log

archive/Squeak5.3-19435-64bit-202003021730-Linux.zip : installdirs
	(cd archive ; wget --no-check-certificate https://files.squeak.org/5.3/Squeak5.3-19435-64bit/Squeak5.3-19435-64bit-202003021730-Linux.zip ; touch Squeak5.3-19435-64bit-202003021730-Linux.zip )

archive/Squeak5.3-19435-64bit-202003021730-Linux : installdirs  archive/Squeak5.3-19435-64bit-202003021730-Linux.zip
	(cd archive ; unzip Squeak5.3-19435-64bit-202003021730-Linux.zip ; touch Squeak5.3-19435-64bit-202003021730-Linux)

Squeak5.3-19435-64bit.image : archive/Squeak5.3-19435-64bit-202003021730-Linux
	cp -r archive/Squeak5.3-19435-64bit-202003021730-Linux/shared/* .
	cp -r archive/Squeak5.3-19435-64bit-202003021730-Linux/bin .
	cp -r archive/Squeak5.3-19435-64bit-202003021730-Linux/squeak.sh .
	chmod u+x squeak.sh
	touch Squeak5.3-19435-64bit.image

teststart: Squeak5.3-19435-64bit.image
	$(SHELL) ./squeak.sh Squeak5.3-19435-64bit.image

conf-script:
	cp -r ./build/replit-script .replit

conf-gui:
	cp -r ./build/replit-gui .replit

scripting.image: Squeak5.3-19435-64bit.image
	./bin/squeak -vm-display-null -vm-sound-null  Squeak5.3-19435-64bit.image build/loadreplitsupport.st

installdirs:
	mkdir -p archive
