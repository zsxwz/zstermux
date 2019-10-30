#!/data/data/com.termux/files/usr/bin/bash

screen -S aria2 -X quit
echo "aria2服务已关闭"
list=`wget -qO- https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt|awk NF|sed ":a;N;s/\n/,/g;ta"`
sed -i "s@bt-tracker.*@bt-tracker=$list@g" /.config/aria2.conf
echo "tracker已更新，请重新运行aria2"
sh aria2.sh
