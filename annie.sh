#!/data/data/com.termux/files/usr/bin/bash

if [ -x "$(command -v annie)" ] ; then
	echo "annie已安装，使用请查看帮助"
	annie
else
	cd ~
	echo "安装golang"
	echo "安装过程如果报错，请自备上网代理软件"
	pkg install golang -y
	echo "安装annie，请耐心等待"
	go get github.com/iawia002/annie
	mv go/bin/annie /data/data/com.termux/files/usr/bin/annie
	echo "annie已安装，使用请查看帮助"
	annie
fi
exit
