#!/data/data/com.termux/files/usr/bin/bash
rm zs.sh
rm -rf zstermux
pkg upgrade -y
pkg install git -y
git clone https://github.com/zsxwz/zstermux.git

mkdir .termux
cp -f "$HOME/zstermux/zs.sh" "$HOME/zs.sh"
alias zs='sh zs.sh'
bash zs.sh

exit
