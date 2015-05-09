#!/bin/sh

charset="cp1250";

while [ "$1" ]
do
	filename=`echo "$1"|sed -e "s/\.[a-z0-9]\+$//g"`;
	ext=`echo "$1"|sed -e 's/^.\+\.\([a-z0-9]\+\)$/\1/g'`;



    	mplayer -really-quiet -nosound -sub "$filename.txt" -subcp $charset -dumpsrtsub "$filename.$ext" 2>&1;
    	mv dumpsub.srt "$filename.srt"
shift
done
