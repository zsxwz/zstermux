# zstermux

一个termux一键脚本，安装运行各种好玩的，UnblockNeteaseMusic解锁云音乐代理，常用视频下载工具youtub-dl，和annie，常用磁力种子下载工具cloud-torrent，aria2，还有终端配色，修改恢复更多按键。Adguard dns服务。局域网文件共享，chfs和kodexplorer。以及lnmp建站环境的安装[旧版termux可能无法使用]。

### 需要什么就安装运行什么，不会全部安装。

安装脚本：
```
# 旧版的termux可能curl都没有安装，先安装一下即可
pkg install curl -y

# 下载运行脚本
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zsxwz/zstermux/master/install.sh)"  
```

执行脚本：
```
sh zs.sh
或者
./zs.sh
```

使用screen后台运行，重启手机或者强制停止termux即可关闭后台程序。或者：
```
//查看后台程序
screen -ls

//关闭程序
kill pid

//恢复窗口，screen -r 窗口名，如恢复aria2窗口：
screen -r aria2
```

