#!/data/data/com.termux/files/usr/bin/bash

cd zstermux
echo ""
echo "获取更多好玩内容请到姿势论坛。https://bbs.zsxwz.com/"
echo -e "\033[31m环境安装，第一次安装使用，或者安装过程报错，请务必安装一次运行环境,vim nodejs screen等等，输入1，即可。\033[0m"
echo ""
echo "1.运行环境安装更新"
echo "2.百度网盘提取码查询"
echo "3.网易云音乐代理"
echo "4.aria2高速下载"
echo "5.百度网盘不限速"
echo "6.oh-my-zsh配色"
echo "7.更多按键"
echo "8.youtube-dl-interactive下载网页视频"
echo "9.http-server文件管理服务"
echo "10.卸载/更新"
echo "0.退出脚本"
echo ""
echo -n "请输入需要执行的命令序号:"
read int
if
	[ $int -eq "1" ] ; then
	termux-setup-storage
        pkg install wget unzip nodejs aria2 vim screen -y
	cd ~
	bash zs.sh

elif
	[ $int -eq "2" ] ; then
	bash baidupankey.sh

elif
	[ $int -eq "3" ] ; then
	bash UnblockNeteaseMusic.sh

elif
	[ $int -eq "4" ] ; then
	bash aria2.sh
elif
	[ $int -eq "5" ] ; then
	bash baidu.sh
elif
	[ $int -eq "6" ] ; then
	cd ~
	sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"
	termux-reload-settings
elif
	[ $int -eq "7" ] ; then
	cp termux.properties ~/.termux
	termux-reload-settings
elif
	[ $int -eq "8" ] ; then
	sh youtube.sh
elif
        [ $int -eq "9" ] ; then
	bash http-server.sh
elif
        [ $int -eq "10" ] ; then
	bash unzs.sh
elif
	[ $int -eq "0" ] ; then
	exit
fi
exit
