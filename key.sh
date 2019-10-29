#!/data/data/com.termux/files/usr/bin/bash


echo "修改按键,输入i，编辑。按esc退出编辑，输入:wq!，保存退出。"
read int
if
	[ $int -eq "1" ] ; then
        cp termux.properties ~/.termux
        termux-reload-settings

elif
	[ $int -eq "2" ] ; then
	vim .termux/termux.properties
	termux-reload-settings
fi
exit
