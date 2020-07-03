#!/data/data/com.termux/files/usr/bin/bash
cd ~/zstermux

echo ""
echo "1.安装/运行aria2高速下载"
echo "2.安装/运行cloud-torrent磁力下载"
echo ""

read -p "请输入数字：" ini
case $ini in
1)
bash aria2.sh
;;
2)
bash cloud-torrent.sh
;;
esac
