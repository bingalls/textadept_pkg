#!/bin/sh

INSTALLER='textadept.list'
if [ -f $INSTALLER ];then
	echo "About to overwrite $INSTALLER Ctrl-C to abort";
	read unused;
fi

echo '%product TextAdept editor' > $INSTALLER;
echo '%copyright © 2011 by Bruce Ingalls. See also TextAdept source files' >> $INSTALLER;
echo '%vendor Bruce Ingalls' >> $INSTALLER;
echo '%license LICENSE' >> $INSTALLER;
echo '%readme README' >> $INSTALLER;
echo '%description TextAdept- Light, extensible text editor' >> $INSTALLER;
echo '%version 3.7' >> $INSTALLER;


mkepmlist /Applications/textadept.app | egrep -v '^d.+' >> $INSTALLER;
