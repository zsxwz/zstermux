#!/data/data/com.termux/files/usr/bin/bash
echo ""

if [ -d "$HOME/go/bin/cloud-torrent" ] ; then
        cd ~
	cd go/bin
	./cloud-torrent -p 1024
	am start -a android.intent.action.VIEW -d http://localhost:1024
	sh zs.sh
else
	cd ~
	echo "安装golang"
	echo "安装过程如果报错，请到终端设置，修改为中科大源"
	pkg install golang -y
	echo "安装cloud-torrent，请耐心等待"
	go get -v github.com/jpillora/cloud-torrent
	echo "cloud-torrent已在后台运行，请用浏览器打开访问，localhost:1024"
	echo ""
        am start -a android.intent.action.VIEW -d http://localhost:1024
	sh zs.sh
fi
exit
