#!/data/data/com.termux/files/usr/bin/bash

if [ -d "$PREFIX/bin/http-server" ] ; then
  screen -S http http-server

else
  npm install -g http-server
  screen -S http http-serve
fi
exit
