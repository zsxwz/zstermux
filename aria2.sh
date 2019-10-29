#!/data/data/com.termux/files/usr/bin/bash

echo ""
echo "1.安装/运行aria2服务"
echo "2.修改aria2配置"

read int
if
	[ $int -eq "1" ] ; then
	cd ~
	mkdir -p .config/aria2
	cd zstermux
	cp aria2.conf ~/.config/aria2/aria2.conf
        sh a2.sh
elif
	[ $int -eq "2" ] ; then
	vim .config/aria2/aria2.conf
        screen -S aria2 -X quit
        echo "服务已关闭，请重新安装运行"	
	sh aria2.sh
fi
