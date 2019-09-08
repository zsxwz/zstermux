#!/data/data/com.termux/files/usr/bin/bash

echo ""
echo "1.安装/运行aria2"
echo "2.aria2使用推荐配置"
echo "3.关闭aria2，使用推荐配置之前，需关闭服务。"
echo ""
echo -n "请输入需要执行的命令序号:"
read int
if
	[ $int -eq "1" ] ; then
        sh a2.sh
elif
	[ $int -eq "2" ] ; then
	mkdir /.config/aria2
	cp aria2.conf ~/.config/aria2/aria2.conf
  echo ""
	echo "已使用推荐配置，如需修改配置确保环境安装之后，vim .config/aria2/aria2.conf"
  echo ""
	sh aria2.sh
elif
	[ $int -eq "3" ] ; then
	screen -S aria2 -X quit
	echo ""
	echo "aria2服务已关闭"
	echo ""
	sh aria2.sh
fi
