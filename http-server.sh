#!/data/data/com.termux/files/usr/bin/bash

if [ -d "$PREFIX/bin/http-server" ] ; then
  termux-setup-storage
  screen -S http http-server

else
  npm install -g http-seever
  termux-setup-storage
  screen -S http http-serve
fi
exit
