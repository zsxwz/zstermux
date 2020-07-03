#!/data/data/com.termux/files/usr/bin/bash

if ! [ -x "$(command -v node)"  ] ; then
apt install nodejs -y
fi
if ! [ -x "$(command -v screen)"  ] ; then
apt install screen -y
fi
if ! [ -x "$(command -v git)"  ] ; then
apt install git -y
fi

if [ -d "$HOME/UnblockNeteaseMusic" ] ; then
	cd ~/UnblockNeteaseMusic
	screen -dmS music node app.js
	echo ""
        echo -e "\033[31m代理已在后台运行\033[0m"
	echo -e "\033[31m请修改WiFi代理为，127.0.0.1，端口为，8080\033[0m"
	echo ""
	cd ~
	bash zs.sh
else
	cd ~
	echo -e "\033正在下载安装\033[0m"
	git clone https://github.com/nondanee/UnblockNeteaseMusic.git
	cd ~/UnblockNeteaseMusic
	screen -dmS node app.js
	echo ""
	echo -e "\033[31m代理已在后台运行\033[0m"
        echo -e "\033[31m请修改WiFi代理为，127.0.0.1，端口为，8080\033[0m"
	echo ""
	cd ~
	bash zs.sh
fi
exit
