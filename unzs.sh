#!/data/data/com.termux/files/usr/bin/bash

echo "卸载之后，重新安装更新"
echo "1.百度网盘提取码查询"
echo "2.网易云音乐代理"
echo "3.aria2高速下载"
echo "4.BaiduPCS-Go"
echo "5.oh-my-zsh配色修改"
echo "6.修改按键"
echo "0.卸载脚本"
echo -n "请输入需要执行的命令序号:"

read int
if
	[ $int -eq "1" ] ; then        
        rm -rf /data/data/com.termux/files/usr/lib/node_modules/baidupankey
        rm /data/data/com.termux/files/usr/bin/bdp
	bash zs.sh
elif
	[ $int -eq "2" ] ; then
	cd ~
	rm -rf UnblockNeteaseMusic
	bash zs.sh
elif
	[ $int -eq "3" ] ; then
	cd ~
	rm -rf webui-aria2
	pkg uninstall aria2
	bash zs.sh
elif
	[ $int -eq "4" ] ; then
	cd ~
	rm -rf BaiduPCS-Go
	bash zs.sh
elif
	[ $int -eq "5" ] ; then
	cd ~
	~/.termux/colors.sh
  ~/.termux/fonts.sh
	bash zs.sh
elif
	[ $int -eq "6" ] ; then
	cd ~/.termux
	vim termux.properties
	echo "重启app生效"
elif
	[ $int -eq "0" ] ; then
	cd ~
	rm zs.sh
	rm -rf zstermux
	cd .termux
	rm termux.properties
fi
exit
