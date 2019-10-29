#!/data/data/com.termux/files/usr/bin/bash
echo "国内磁力种子下载，基本没有什么速度，请自备代理"
echo "1.aria2高速下载"
echo "2.peerflix-server磁力下载"
echo "3.cloud-torrent磁力下载"

echo ""

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
