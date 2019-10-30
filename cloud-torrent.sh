#!/data/data/com.termux/files/usr/bin/bash

if [ -d "$HOME/go/src/github.com/jpillora/cloud-torrent" ] ; then
        cd ~
	cd go/bin
	screen -dmS cloud-torrert ./cloud-torrent -p 1024
	echo "cloud-torrent已在后台运行，请用浏览器打开访问，localhost:1024"
	am start -a android.intent.action.VIEW -d http://localhost:1024
	cd ~
	sh zs.sh
else
	cd ~
	echo "安装golang"
	echo "安装过程如果报错，请自备上网代理工具"
	pkg install golang -y
	echo "安装cloud-torrent，请耐心等待"
	go get -v github.com/jpillora/cloud-torrent
	cd go/bin
	screen -dmS cloud-torrert ./cloud-torrent -p 1024
	echo "cloud-torrent已在后台运行，请用浏览器打开访问，localhost:1024"
	echo ""
        am start -a android.intent.action.VIEW -d http://localhost:1024
	cd ~
	sh zs.sh
fi
exit
