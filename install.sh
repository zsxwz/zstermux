#!/data/data/com.termux/files/usr/bin/bash
pkg upgrade
pkg install git -y
git clone https://github.com/zsxwz/zstermux.git

mkdir .termux
cp -f "$HOME/zstermux/zs.sh" "$HOME/zs.sh"

bash zs.sh
exit
