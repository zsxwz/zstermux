#!/data/data/com.termux/files/usr/bin/bash

if [ -d "$HOME/webui-aria2" ] ; then
	cd ~/webui-aria2
	node node-server.js
else
	 cd ~
	 git clone https://github.com/ziahamza/webui-aria2.git
	 cd ~/webui-aria2
	 node node-server.js
fi
exit
