#!/data/data/com.termux/files/usr/bin/bash

echo ""
echo "1.安装/运行aria2服务"
echo "2.更新tracker"
echo -n "请输入要执行命令的序号"
echo ""
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
	sh trackers-list-aria2.sh
fi
