#!/data/data/com.termux/files/usr/bin/bash

if ! [ -x "$(command -v screen)"  ] ; then
apt install screen -y
fi

if [ ! -x "$(command -v chfs)"  ] ; then
    cd ~
    wget https://iscute.cn/tar/chfs/2.0/chfs-linux-arm64-2.0.zip --no-check-certificate
    unzip chfs-linux-arm64-2.0.zip
    chmod +x chfs
    mv chfs /data/data/com.termux/files/usr/bin/chfs
    read -p "请输入用户名:" name
    echo "$name" > name
    var1=$(cat name)
    read -p "请输入密码:" password
    echo "$password" |base64 -i > password
    var2=$(base64 -d password)
    screen -dmS chfs chfs --port=1234 --path="/sdcard" --rule="::r|$var1:$var2:rwd"
    echo -e "\033[31m请用chrome浏览器打开，127.0.0.1:1234\033[0m"
	echo ""
    am start -a android.intent.action.VIEW -d http://127.0.0.1:1234
    
else
    cd ~
    var1=$(cat name)
    var2=$(base64 -d password)
    screen -dmS chfs chfs --port=1234 --path="/sdcard" --rule="::r|$var1:$var2:rwd"
    echo -e "\033[31m请用chrome浏览器打开，127.0.0.1:1234\033[0m"
	echo ""
    am start -a android.intent.action.VIEW -d http://127.0.0.1:1234
fi
exit
 
