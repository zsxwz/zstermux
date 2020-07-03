#!/data/data/com.termux/files/usr/bin/bash

cd ~/zstermux
menu(){
echo ""
echo "获取更多好玩内容请到姿势论坛。https://bbs.zsxwz.com/"
echo ""
echo "1.换源等设置"
echo "2.建站环境安装"
echo "3.网易云音乐代理"
echo "4.常用磁力下载工具"
echo "5.常用视频下载工具"
echo "6.Adguard dns服务"
echo "7.局域网文件共享服务"
echo "8.帮助"
echo ""
}

read -p "请输入数字：" ini

case $ini in
1)
bash seetings.sh
;;
2)
bash lnmp.sh
;;
3)
bash UnblockNeteaseMusic.sh
;;
4)
bash torrent.sh
;;
5)
bash video.sh
;;
6)
bash adguard.sh
;;
7)
bash http-server.sh
;;
8)
echo "需要什么就安装什么，不需要的不会安装"
cd ~
bash zs.sh
;;
*)
exit 0
;;
esac

menu


























