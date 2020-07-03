#!/data/data/com.termux/files/usr/bin/bash

echo ""
echo "\t1.恢复更多按键"
echo "\t2.修改按键 \n\t 修改完之后ctrl +o保存 ，ctrl + x 退出"

echo ""
read -p "请输入数字：" ini

case $ini in
1)
cp termux.properties ~/.termux
termux-reload-settings
cd ~
sh zs.sh
;;
2)
nano .termux/termux.properties
termux-reload-settings
cd ~
sh zs.sh
;;
*)
exit 0
;;
esac
