#!/data/data/com.termux/files/usr/bin/bash

cd ~/zstermux
echo ""
echo "\t1.自动换源"
echo "\t2.手动换源"
echo "\t3.恢复默认源"

echo ""
read -p "请输入数字：" ini 
case $ini in
1)
sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list
sed -i 's@^\(deb.*games stable\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/game-packages-24 games stable@' $PREFIX/etc/apt/sources.list.d/game.list
sed -i 's@^\(deb.*science stable\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/science-packages-24 science stable@' $PREFIX/etc/apt/sources.list.d/science.list
apt update && apt upgrade
bash setting.sh
;;
2)
termux-change-repo
bash setting.sh
;;
3)
rm -rf $PREFIX/etc/apt/sources.list.d/science.list
cp sources.list $PREFIX/etc/apt/sources.list.d/science.list
;;
*)
bash setting.sh
;;
esac
