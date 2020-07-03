#!/data/data/com.termux/files/usr/bin/bash
cd ~/zstermux

echo ""
echo "1.youtube-dl视频下载"
echo "2.you-视频下载"
echo "3.annie视频下载"
echo ""

read -p "请输入数字：" ini

case $ini in
1)
if [ -x "$(command -v youtube-dl)" ] ; then
  echo ""
	echo "使用方法："
	echo "youtube-dl 视频链接url"

else
        echo "安装更新python"
        pkg install python -y
	pip install --upgrade pip
	echo "安装youtube-dl"
	pip install youtube-dl
	echo "使用方法："
	echo "youtube-dl视频链接url"
fi
;;
2)
if [ -x "$(command -v you-get)" ] ; then
  echo ""
	echo "使用方法："
	echo "you-get 视频链接url"

else
        echo "安装更新python"
        pkg install python -y
	pip install --upgrade pip
	echo "安装you-get"
	pip install you-get
	echo "使用方法："
	echo "youtube-dl视频链接url"
fi
;;
3)
if [ -x "$(command -v annie)" ] ; then
	echo "annie已安装"
	annie
else
	cd ~
	wget -O annie.tar.gz https://github.zsxwz.com/https://github.com/iawia002/annie/releases/download/0.10.2/annie_0.10.2_Linux_ARM64.tar.gz
	tar -zxvf annie.tar.gz
	rm annie.tar.gz
	chmod +x annie
	mv annie /data/data/com.termux/files/usr/bin/annie
	echo "annie已安装"
	annie
fi
;;
*)
cd ~
bash zs.sh
;;
esac
