# zstermux

一个termux一键脚本，一键安装运行各种好玩的，UnblockNeteaseMusic解锁云音乐代理，常用视频下载工具youtub-dl，和annie，常用磁力种子下载工具cloud-torrent，peerfliex，aria2，及百度提取码查询，baidupcs命令行版和网页版等等，还有终端配色，修改恢复更多按键，由于清华源和中科大源都存在一些问题，不太建议更换国内源。

### 除了第一步基本软件环境必须安装之外，其他的需要什么安装什么，不是全部安装。

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

一些注意事项及使用教程：

1. 百度网盘提取码查询：[BDP](https://bbs.zsxwz.com/thread-228.htm)
安装完之后，查询只要输入：

```
bdp -u https://pan.baidu.com/s/xxxxx
```

2. 网易云音乐代理：[UnblockNeteaseMusic](https://bbs.zsxwz.com/thread-648.htm)

- 云音乐客户端新版本如果失效，就安装旧版本。
- wifi就设置代理，数据就设置apn。如果不用的时候建议将设置恢复，以免造成网络无法访问。

3. 边下边播：[peerflix](https://zsxwz.com/2019/09/13/%e7%bd%91%e9%a1%b5%e7%89%88bt%e7%a3%81%e5%8a%9b%e4%b8%8b%e8%bd%bd%e5%b7%a5%e5%85%b7peerflix-server%ef%bc%8c%e8%be%b9%e4%b8%8b%e8%be%b9%e6%92%ad%e3%80%82/)

- 已修改默认下载文件夹为/sdcard/Download
- 如果一点速度都没有请自行修改tracker，配置文件目录：~/.config/peerflix-server/config.json

4. annie视频下载：[annie](https://zsxwz.com/2019/09/25/annie%e4%b8%80%e6%ac%be%e5%9f%ba%e4%ba%8ego%e7%9a%84%e5%90%84%e5%a4%a7%e8%a7%86%e9%a2%91%e7%bd%91%e7%ab%99%e8%a7%86%e9%a2%91%e4%b8%8b%e8%bd%bd%e5%88%a9%e5%99%a8/)

- 新版本的annie已经支持aria2下载

```
annie -aria2 url
```
5. youtube-dl-interactive视频下载，[youtube-dl-interactive](https://bbs.zsxwz.com/thread-711.htm)

- 同时安装了youtube-dl-interactive和youtube-dl，两个命令都可以下载视频。
- 默认下载目录是：/data/data/com.termux/files/home/
- ls -a,查看目录下的文件，mv 123.mp4 /sdcard/Download，自己手动把123.mp4移动到内存卡上

6. 老司机cloud-torrent：[cloud-torrent](https://bbs.zsxwz.com/thread-1304.htm)

- 安装之后，请自己设置下载保存目录，不然直接下载在termux安装目录下。

7. aria2，可以下载磁力也可以下载其他。

- 下载磁力链接之后如果没有速度就更新一下tracker


8. http-server，本地http服务，方便局域网内，发送文件。

9. oh-my-zsh，终端美化。



预览图：
![](https://ae01.alicdn.com/kf/Hcdcd0d3cce664778bd84fec26593d9dep.jpg)
