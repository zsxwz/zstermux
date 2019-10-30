#!/data/data/com.termux/files/usr/bin/bash

echo ""
echo "1.安装/运行命令行版百度"
echo "2.安装/运行网页版百度"
echo ""

echo -n "请输入需要执行的命令序号:"
read int
if
	[ $int -eq "1" ] ; then
	sh baidupcs-go.sh
elif
	[ $int -eq "2" ] ; then
	sh baidupcs-web.sh
fi
