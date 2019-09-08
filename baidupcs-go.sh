#!/data/data/com.termux/files/usr/bin/bash

echo -e "\033[31m输入，login，即可登录。或者 ,用bduss登录，login bduss=....，修改下载目录:cd /apps/baidu_shurufa\033[0m"
echo -e "\033[31m若下载无速度，修改目录之后，修改id：config set -appid=309847\033[0m"
echo -e "\033[31m修改UA：config set -user_agent Opera/10.0a]\033[0m"

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
