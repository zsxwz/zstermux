#!/data/data/com.termux/files/usr/bin/bash

echo "安装/运行http-server"

if
	if [ -x "$(command -v http-server)" ] ; then
	echo "运行"
	http-server
else
        echo "安装服务"
	npm install -g http-server
	echo "运行"
	http-server

fi
exit
