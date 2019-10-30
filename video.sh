#!/data/data/com.termux/files/usr/bin/bash

echo ""
echo "1.youtube-dl-interactive视频下载"
echo "2.annie视频下载"
echo ""

echo -n "请输入需要执行的命令序号:"
read int
if
	[ $int -eq "1" ] ; then
	sh youtube-dl.sh
elif
	[ $int -eq "2" ] ; then
	sh annie.sh
fi
