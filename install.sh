#!/data/data/com.termux/files/usr/bin/bash
sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux stable main@' $PREFIX/etc/apt/sources.list
pkg upgrade
pkg install git -y
git clone https://github.com/zsxwz/zstermux.git

cp -f "$HOME/zstermux/zs.sh" "$HOME/zs.sh"

bash zs.sh
exit
