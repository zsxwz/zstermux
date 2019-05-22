#!/data/data/com.termux/files/usr/bin/bash

if [ -d "$HOME/UnblockNeteaseMusic" ] ; then
	cd ~/UnblockNeteaseMusic
	node app.js
else
	cd ~
	git clone https://github.com/nondanee/UnblockNeteaseMusic.git
	cd ~/UnblockNeteaseMusic
	node app.js
fi
exit
