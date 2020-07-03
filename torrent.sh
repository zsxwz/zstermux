#!/data/data/com.termux/files/usr/bin/bash
cd ~/zstermux

echo ""
echo "\t1.安装/运行aria2高速下载"
echo "\t2.安装/运行cloud-torrent磁力下载"
echo ""

read - p "请输入数字：" ini
case $ini in
1)
bash aria2.sh
;;
2)
bash cloud-torrent.sh
;;
esac
