#!/data/data/com.termux/files/usr/bin/bash
rm -rf zs.sh
rm -rf ~/zstermux

if ! [ -x "$(command -v unzip)"  ] ; then
apt install unzip -y
fi

wget -O zs.zip https://github.com/zsxwz/zstermux/archive/master.zip
unzip zs.zip
rm zs.zip
mv zstermux-master zstermux

mkdir .termux
cp -f "$HOME/zstermux/zs.sh" "$HOME/zs.sh"
cd ~
chmod +x zs.sh
bash zs.sh
exit
