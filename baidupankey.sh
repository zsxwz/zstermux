#!/data/data/com.termux/files/usr/bin/bash

if [ -d "$PREFIX/lib/node_modules/baidupankey" ] ; then
	bdp -h
else
	npm install baidupankey -g
	bdp -h
fi
exit
