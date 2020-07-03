#!/data/data/com.termux/files/usr/bin/bash
cd ~/zstermux
echo "\t1.oh-my-zsh终端配色"
echo "\t2.恢复/修改底部按键"
echo "\t3.换源"
echo ""
read - p "请输入数字：" ini

case $ini in
1)
if ! [ -x "$(command -v git)"  ] ; then
apt install -y git
fi

if ! [ -x "$(command -v zsh)"  ] ; then
apt install -y zsh
fi
cd ~
git clone https://github.com/Cabbagec/termux-ohmyzsh.git "$HOME/termux-ohmyzsh" --depth 1

mv "$HOME/.termux" "$HOME/.termux.bak.$(date +%Y.%m.%d-%H:%M:%S)"
cp -R "$HOME/termux-ohmyzsh/.termux" "$HOME/.termux"

git clone git://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh" --depth 1
mv "$HOME/.zshrc" "$HOME/.zshrc.bak.$(date +%Y.%m.%d-%H:%M:%S)"
cp "$HOME/.oh-my-zsh/templates/zshrc.zsh-template" "$HOME/.zshrc"
sed -i '/^ZSH_THEME/d' "$HOME/.zshrc"
sed -i '1iZSH_THEME="agnoster"' "$HOME/.zshrc"
echo "alias chcolor='$HOME/.termux/colors.sh'" >> "$HOME/.zshrc"
echo "alias chfont='$HOME/.termux/fonts.sh'" >> "$HOME/.zshrc"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"
chsh -s zsh
termux-reload-settings
;;
2)
bash key.sh
;;
3)
bash source.sh
;;
*)
cd ~
bash zs.sh
;;
esac













