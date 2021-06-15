"This file should be in chunk format"
!(FileStream stdout)
  cr ;
  nextPutAll: 'Hello, World!!';
  cr;
  flush. 
!Smalltalk quitPrimitive. 