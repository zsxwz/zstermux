#!/data/data/com.termux/files/usr/bin/bash

if [ -d "$PREFIX/bin/youtube-dl" ] ; then
  echo ""
	echo "使用方法："
	echo "dl 视频链接url"
else
        echo "安装更新python"
        pkg install python -y
	pip install --upgrade pip
	echo "安装youtube-dl-interactive"
	pip install youtube-dl
	npm install -g youtube-dl-interactive
	alias dl='youtube-dl-interactive'
	echo "使用方法："
	echo "dl 视频链接url"
fi
exit
