#!/data/data/com.termux/files/usr/bin/bash

if [ ! -d "$PREFIX/bin/youtube-dl" ] ; then
  echo ""
	echo "使用方法："
	echo "youtube-dl-interactive 网页链接url"
else
	pip install youtube-dl
	npm install -g youtube-dl-interactive
  echo ""
	echo "使用方法："
	echo "youtube-dl-interactive 网页链接url"

fi
exit
