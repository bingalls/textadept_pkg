#!/bin/sh
#Create EPM list file to build a package
#Install EPM from http://www.epmhome.org/
#Todo:add dependency on gtk 2.x
#Todo: add gnome file associations, likely to /usr/share/application-registry/
#See http://developers.sun.com/solaris/articles/integrating_gnome.html
#and http://ubuntuforums.org/archive/index.php/t-51012.html

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
echo '' >> $INSTALLER
echo '%postinstall ln -s /usr/share/textadept/textadept /usr/bin/textadept' >> $INSTALLER
echo '' >> $INSTALLER
echo '%preremove rm /usr/bin/textadept' >> $INSTALLER
echo '' >> $INSTALLER
echo 'f 700 root adm /usr/share/applications/textadept.desktop /usr/share/applications/textadept.desktop' >> $INSTALLER
#echo 'f 700 root adm /usr/share/pixmaps/ta_48x48.png /usr/share/pixmaps/ta_48x48.png' >> $INSTALLER;
echo 'f 700 root adm /usr/share/pixmaps/textadept.svg /usr/share/pixmaps/textadept.svg' >> $INSTALLER;
echo '' >> $INSTALLER

mkepmlist /usr/share/textadept/ | egrep -v '^d.+' >> $INSTALLER;
