#!/bin/sh
# run = "./bin/squeak -vm-display-null -vm-sound-null Squeak5.3-19435-64bit.image main.st"
#
# be nice if we ciud push the filew names intoi an env var
#
mkdir -p archive
( cd archive ;
wget --no-check-certificate https://files.squeak.org/5.3/Squeak5.3-19435-64bit/Squeak5.3-19435-64bit-202003021730-Linux.zip ;
unzip Squeak5.3-19435-64bit-202003021730-Linux.zip )
mv archive/Squeak5.3-19435-64bit-202003021730-Linux/shared/* .
mv archive/Squeak5.3-19435-64bit-202003021730-Linux/bin .
mv archive/Squeak5.3-19435-64bit-202003021730-Linux/squeak.sh .
chmod u+x squeak.sh
