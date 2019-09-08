#!/data/data/com.termux/files/usr/bin/bash
echo ""
echo "1.安装http-server"
echo "2.运行http-server"
echo "3.关闭http-server"
echo ""
echo -n "请输入需要执行的命令序号:"
read int
if
	[ $int -eq "1" ] ; then
        npm install - g http-server
	
echo"已安装http服务"
echo""
sh http-server.sh

elif
	[ $int -eq "2" ] ; then
	screen -S http http-server
elif
	[ $int -eq "3" ] ; then
        screen -S http -X quit
echo"服务已关闭"
echo""
sh http-server.sh
fi
exit
