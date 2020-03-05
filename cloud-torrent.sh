#!/data/data/com.termux/files/usr/bin/bash

if [ -d "$HOME/cloud-torrent" ] ; then
        cd ~
	screen -dmS cloud-torrert ./cloud-torrent -p 1024
	echo "cloud-torrent已在后台运行，请用浏览器打开访问，localhost:1024"
	am start -a android.intent.action.VIEW -d http://localhost:1024
	cd ~
	sh zs.sh
else
	cd ~
	wget https://github.com/boypt/simple-torrent/releases/download/1.2.6/cloud-torrent_linux_amd64.gz
	gzip -d cloud-torrent_linux_amd64.gz
	mv cloud-torrent_linux_amd64 cloud-torrent
	chmod +x cloud-torrent
	screen -dmS cloud-torrert ./cloud-torrent -p 1024
	echo "cloud-torrent已在后台运行，请用浏览器打开访问，localhost:1024"
	echo ""
        am start -a android.intent.action.VIEW -d http://localhost:1024
	cd ~
	sh zs.sh
fi
exit
