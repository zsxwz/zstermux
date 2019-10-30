#!/data/data/com.termux/files/usr/bin/bash
echo "国内磁力种子下载，基本没有什么速度，请自备代理"
echo "1.安装/运行aria2高速下载"
echo "2.安装/运行peerflix-server磁力下载"
echo "3.安装/运行cloud-torrent磁力下载"
echo ""
echo -n "请输入需要执行的命令序号:"
read int
if
	[ $int -eq "1" ] ; then
	sh aria2.sh
elif
	[ $int -eq "2" ] ; then
	sh peer.sh

elif
	[ $int -eq "3" ] ; then
	sh cloud-torrent.sh

fi
exit
