#!/bin/sh

INSTALLER='textadept.list'
if [ -f $INSTALLER ];then
	echo "About to overwrite $INSTALLER Ctrl-C to abort";
	read unused;
fi

cp header.list $INSTALLER

mkepmlist /Applications/Textadept.app >> $INSTALLER;
mkepmlist /Applications/ta >> $INSTALLER;
mkepmlist /usr/local/bin/ta >> $INSTALLER;

if [ -f $INSTALLER ];then
	echo "About to build. Ctrl-C to abort";
	read unused;
fi
epm -f osx `basename $INSTALLER .list`
