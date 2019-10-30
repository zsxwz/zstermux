#!/data/data/com.termux/files/usr/bin/bash

echo "1.oh-my-zsh终端配色"
echo "2.恢复/修改底部按键"
echo "3.国内用户使用中科大软件源"
echo "4.termux后台运行"
echo ""
echo -n "请输入需要执行的命令序号:"

read int
if
	[ $int -eq "1" ] ; then
	cd ~
	sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"
	termux-reload-settings
elif
	[ $int -eq "2" ] ; then
	sh key.sh

elif
	[ $int -eq "3" ] ; then
	mv $PREFIX/etc/apt/sources.list $PREFIX/etc/apt/sources.list.bak
	mv sources.list $PREFIX/etc/apt/sources.list
	apt update
	apt upgrade
	sh zs.sh
elif
	[ $int -eq "4" ] ; then
	termux-wake-lock
	sh zs.sh
fi
exit
