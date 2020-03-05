#!/data/data/com.termux/files/usr/bin/bash

if [ ! -x "$HOME/chfs" ] ; then
        cd ~
	screen -dmS chfs chfs --port=1234 --path="/sdcard"
	ifconfig
	echo "chfs已在后台运行，ifconfig查看局域网ip地址，浏览器打开192.168.xxx.xxx:1234"
	cd ~
	sh zs.sh
else
	cd ~
	wget https://iscute.cn/tar/chfs/2.0/chfs-linux-arm64-2.0.zip
	unzip chfs-linux-arm64-2.0.zip
	chmod +x chfs
	mv chfs /data/data/com.termux/files/usr/bin/chfs
	screen -dmS chfs chfs --port=1234 --path="/sdcard"
	ifconfig
	echo "chfs已在后台运行，ifconfig查看局域网ip地址，浏览器打开192.168.xxx.xxx:1234"
	cd ~
	sh zs.sh
fi
exit
