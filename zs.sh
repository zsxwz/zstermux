#!/data/data/com.termux/files/usr/bin/bash

cd zstermux

echo "获取更多好玩内容请到姿势论坛。https://bbs.zsxwz.com/"

echo "第一次安装，请先安装运行环境"

echo "1.运行环境安装更新"

echo "2.百度网盘提取码查询"

echo "3.网易云音乐代理"

echo "4.aria2高速下载"

echo "5.m3u8视频下载"

echo "6.oh-my-zsh配色"

echo "7.更多按键"

echo "8.卸载/更新"

echo "0.退出脚本"

echo -n "请输入需要执行的命令序号:"

read int

if

	[ $int -eq "1" ] ; then        pkg install wget unzip nodejs aria2 vim -y

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

	bash a2.sh

elif

	[ $int -eq "5" ] ; then

	echo "m3u8视频下载"

	bash m3u8.sh

elif

	[ $int -eq "6" ] ; then

	cd ~

	sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"

	echo "重启app生效"

elif

	[ $int -eq "7" ] ; then

	cp termux.properties ~/.termux

	echo "重启app生效"

elif

        [ $int -eq "8" ] ; then

	bash unzs.sh

elif

	[ $int -eq "0" ] ; then

	exit

fi

exit
