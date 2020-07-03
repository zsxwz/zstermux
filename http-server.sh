#!/data/data/com.termux/files/usr/bin/bash
cd ~/zstermux

echo ""
echo "\t1.chfs文件共享"
echo "\t2.kod文件管理器"
echo ""

read - p "请输入数字：" ini
case $ini in
1)
bash chfs.sh
;;
2)
bash kod.sh
;;
esac

