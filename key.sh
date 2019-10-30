#!/data/data/com.termux/files/usr/bin/bash

echo ""
echo "1.恢复更多按键"
echo "2.修改按键"
echo "修改按键,输入i，编辑。按esc退出编辑，输入:wq!，保存退出。"
echo ""
echo -n "请输入需要执行的命令序号:"
read int
if
	[ $int -eq "1" ] ; then
        cp termux.properties ~/.termux
        termux-reload-settings
	sh zs.sh

elif
	[ $int -eq "2" ] ; then
	cd ~
	vim .termux/termux.properties
	termux-reload-settings
	sh zs.sh
fi
exit
