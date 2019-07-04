#!/data/data/com.termux/files/usr/bin/bash

if [ -d "$HOME/BaiduPCS-Go" ] ; then
	cd ~/BaiduPCS-Go
	./BaiduPCS-Go
else
	cd ~
	wget -O 1.zip https://github.com/iikira/BaiduPCS-Go/releases/download/v3.5.6/BaiduPCS-Go-v3.5.6-android-21-arm64.zip
	unzip 1.zip && rm 1.zip
	mv BaiduPCS-Go-v3.5.6-android-21-arm64 BaiduPCS-Go
	cd ~/BaiduPCS-Go
	./BaiduPCS-Go
fi
exit
