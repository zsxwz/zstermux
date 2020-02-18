#!/data/data/com.termux/files/usr/bin/bash

echo "1.安装/运行aria2服务"
echo "2.设置自动更新tracker"
echo ""
echo -n "请输入需要执行的命令序号:"
read int
if
	[ $int -eq "1" ] ; then
        sh a2.sh
elif
	[ $int -eq "2" ] ; then
	crontab -l | { cat; echo "30 19 * * * $HOME/zstermux/trackers-list-aria2.sh"; } | crontab -
fi
