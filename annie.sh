#!/data/data/com.termux/files/usr/bin/bash

if [ -x "$(command -v annie)" ] ; then
	echo "annie已安装，使用请查看帮助"
	annie
else
	cd ~
	echo "anz"
fi
exit
