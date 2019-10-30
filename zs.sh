#!/data/data/com.termux/files/usr/bin/bash

cd zstermux
echo ""
echo "获取更多好玩内容请到姿势论坛。https://bbs.zsxwz.com/"
echo ""
echo -e "\033[31m第一次安装使用，或者安装过程报错，请务必安装一次运行环境,输入1，即可。\033[0m"
echo -e "\033[31m国内用户推荐使用科大源，终端设置里修改即可。\033[0m"
echo ""
echo "1.基础运行环境，软件安装"
echo "2.百度网盘提取码及不限速下载"
echo "3.网易云音乐代理"
echo "4.常用磁力下载工具"
echo "5.常用视频下载工具"
echo "6.http-server服务"
echo "7.推荐终端设置"
echo "0.退出脚本"
echo ""
echo -n "请输入需要执行的命令序号:"

read int
if
	[ $int -eq "1" ] ; then
	termux-setup-storage
        pkg install wget unzip nodejs aria2 vim screen axel ffmpeg -y
	cd ~
	bash zs.sh

elif
	[ $int -eq "2" ] ; then
	bash baidu.sh

elif
	[ $int -eq "3" ] ; then
	bash UnblockNeteaseMusic.sh

elif
	[ $int -eq "4" ] ; then
	bash torrent.sh

elif
	[ $int -eq "5" ] ; then
	sh video.sh
elif
        [ $int -eq "6" ] ; then
	bash http-server.sh
	
elif
        [ $int -eq "7" ] ; then
	bash setting.sh

elif
	[ $int -eq "0" ] ; then
	exit
fi
exit
