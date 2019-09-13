#!/data/data/com.termux/files/usr/bin/bash

if [ -d "$HOME/BaiduPCS-web" ] ; then
	cd ~/BaiduPCS-web
        screen -wipe
	screen -dmS baidu-web ./BaiduPCS-Go
	echo ""
	echo ""
	echo -e "\033[31m如需修改配置请安装命令行版百度\033[0m"
	echo -e "baidupcs-web已在后台运行，请用浏览器打开访问，localhost:5299"
	echo ""
        am start -a android.intent.action.VIEW -d http://localhost:5299
        cd ~
	sh zs.sh
else
	cd ~
	wget -O 1.zip https://github.com/liuzhuoling2011/baidupcs-web/releases/download/3.6.8/BaiduPCS-Go-3.6.8-android-arm64.zip
	unzip 1.zip && rm 1.zip
	mv BaiduPCS-Go-3.6.8-android-arm64 BaiduPCS-web
	cd ~/BaiduPCS-web
	screen -dmS baidu-web ./BaiduPCS-Go
	echo ""
	echo "如需修改配置请安装命令行版百度"
	echo "baidupcs-web已在后台运行，请用浏览器打开访问，localhost:5299"
	echo ""
	cd ~
	sh zs.sh
fi
exit
