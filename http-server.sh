#!/data/data/com.termux/files/usr/bin/bash

if [ ! -x "$(command -v chfs)"  ] ; then
    cd ~
    wget https://iscute.cn/tar/chfs/2.0/chfs-linux-arm64-2.0.zip
    unzip chfs-linux-arm64-2.0.zip
    chmod +x chfs
    mv chfs /data/data/com.termux/files/usr/bin/chfs
    read -p "请输入用户名:" name
    echo "$name" >> name
    var1=$(cat name)
    read -p "请输入密码:" password
    echo "$password" |base64 -i >> password
    var2=$(base64 -d password)
    screen -dmS chfs chfs --port=1234 --path="/sdcard" --rule="::r|$var1:$var2:rwd"
    screen -r chfs
    echo "依次按ctrl a d，离开窗口，即可后台运行"
    
else
    cd ~
    var1=$(cat name)
    var2=$(base64 -d password)
    screen -dmS chfs chfs --port=1234 --path="/sdcard" --rule="::r|$var1:$var2:rwd"
    screen -r chfs
    echo "依次按ctrl a d，离开窗口，即可后台运行"
fi
exit
