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

运行脚本：
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

## 京东签到多合一脚本

这个脚本是单独的，还没有加入上面的zstermux脚本。

签到做活动脚本均来自：[jd_scripts](https://github.com/chinnkarahoi/jd_scripts)，本脚本只是一键在termux本地运行的shell脚本。

注意一下：

- 京东cookie一般有效期为一个月，过期了就再获取一遍。

- 通知渠道可以使用 [server酱](http://sc.ftqq.com/3.version)，cookie过期通知，一些重要提醒通知。需要自己先获取SCKEY。也可以使用钉钉等等渠道，详细自己查看原docker版说明。

- 基本上全天24小时，都有可能在跑脚本，所以请将termux加入电池优化白名单，请确保网络连接。至于会不会很耗电，有时候也是挺玄学的，有些手机系统可能瞎优化，或许会耗电，正常没有多大的影响。

- 第一次使用，需要安装一些环境依赖，以及下载文件，设置定时任务等等，可能需要一点时间。以后即可正常使用。

- [其他说明](https://zsxwz.com/2021/05/05/)


使用教程：

```
#安装
apt update 
apt upgrade

cd ~
wget https://raw.githubusercontent.com/zsxwz/zstermux/master/jd/jd.sh
chmod +x jd.sh
./jd.sh

#下次运行
./jd.sh

# 查看定时任务，后台运行log
tail /data/data/com.termux/files/home/jd_scripts/jd.log -f

```

先获取cookie，可以自己到网页版获取，也可以使用脚本获取。

然后手动测试一下是否能正常签到。

如果可以运行，就添加定时任务就可以了。

![](https://cdn.jsdelivr.net/gh/zsxwz/tuchuang@latest/2021/05/06/2c8e8958e2b7877ffaca9bac0c4a3371.png)
