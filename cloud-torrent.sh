#!/data/data/com.termux/files/usr/bin/bash

if ! [ -x "$(command -v screen)"  ] ; then
apt install screen -y
fi

if [ -x "$(command -v cloud-torrert)"  ] ; then
        cd ~
	screen -dmS cloud-torrert cloud-torrent -p 1024
	echo "cloud-torrent已在后台运行，请用浏览器打开访问，localhost:1024"
	am start -a android.intent.action.VIEW -d http://localhost:1024
	cd ~
	sh zs.sh
else
	cd ~
	wget https://github.zsxwz.com/https://github.com/boypt/simple-torrent/releases/download/1.2.11/cloud-torrent_linux_arm64.gz
	gzip -d cloud-torrent_linux_amd64.gz
	chmod +x cloud-torrent_linux_amd64
	mv cloud-torrent_linux_amd64 /data/data/com.termux/files/usr/bin/cloud-torrent
	screen -dmS cloud-torrert cloud-torrent -p 1024
	echo "cloud-torrent已在后台运行，请用浏览器打开访问，localhost:1024"
	echo ""
        am start -a android.intent.action.VIEW -d http://localhost:1024
	cd ~
	sh zs.sh
fi
exit
