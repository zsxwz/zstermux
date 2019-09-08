#!/data/data/com.termux/files/usr/bin/bash

echo "1.安装Python，软件包比较大，运行环境没有预安装"
echo "2.安装youtube-dl-interactive"
echo -n "请输入需要执行的命令序号:"
read int
if
	[ $int -eq "1" ] ; then
        pkg install python -y
	pip install --upgrade pip
	sh youtube.sh

elif
	[ $int -eq "2" ] ; then
	pip install youtube-dl
	npm install -g youtube-dl-interactive

	echo "使用方法："
	echo "youtube-dl-interactive 网页链接url"

fi
