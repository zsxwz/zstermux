#!/data/data/com.termux/files/usr/bin/bash
echo ""
echo "1.安装Python，软件包比较大，运行环境没有预安装"
echo "2.安装/运行youtube-dl-interactive"
echo ""

echo -n "请输入需要执行的命令序号:"
read int
if
	[ $int -eq "1" ] ; then
        pkg install python -y
	pip install --upgrade pip
	sh youtube-dl.sh
     
elif
	[ $int -eq "2" ] ; then
	sh youtube-dl.sh
fi
exit
