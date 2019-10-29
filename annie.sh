#!/data/data/com.termux/files/usr/bin/bash

pkg upgrade

pkg install ffmpeg -y

echo "安装golang，请保证网络稳定"

pkg install golang -y

echo "安装annie，请耐心等待"

echo "一直无法安装，换清华源重新安装golang"

go get github.com/iawia002/annie

mv go/bin/annie /data/data/com.termux/files/usr/bin/annie

echo "安装完成"

annie -v
