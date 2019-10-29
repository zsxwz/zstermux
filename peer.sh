#!/data/data/com.termux/files/usr/bin/bash

if [ -d "$HOME/.config/peerflix-server" ] ; then
	screen -dmS peerflix-server peerflix-server
	echo -e "\033[31m请用浏览器打开：http://localhost:5299\033[0m"
        am start -a android.intent.action.VIEW -d http://localhost:9000

else
	echo "安装peerflix-server"
	cd ~
	npm install -g peerflix-server
	mkdir .config/peerflix-server
	cd zstermux
	cp config.json ~/.config/peerflix-server/config.json
	screen -dmS peerflix-server peerflix-server
	echo -e "\033[31m请用浏览器打开：http://localhost:5299\033[0m"
        am start -a android.intent.action.VIEW -d http://localhost:9000
fi
exit
