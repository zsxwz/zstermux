#!/data/data/com.termux/files/usr/bin/bash

if [ -d "$PREFIX/lib/node_modules/m3u8download" ] ; then

	m3u8download -helse

	npm install -g m3u8download

	m3u8download -h

fi

exit
