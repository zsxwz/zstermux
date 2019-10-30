# zstermux

一个termux一键脚本，一键安装运行各种好玩的，UnblockNeteaseMusic解锁云音乐代理，常用视频下载工具youtub-dl，和annie，常用磁力种子下载工具cloud-torrent，peerfliex，aria2，及百度提取码查询，baidupcs命令行版和网页版等等，还有终端配色，修改恢复更多按键，由于清华源和中科大源都存在一些问题，不太建议更换国内源。

安装脚本：
```

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

1.百度网盘提取码查询：https://bbs.zsxwz.com/thread-228.htm

2.网易云音乐代理：https://bbs.zsxwz.com/thread-648.htm

3.边下边播：[peerflix](https://zsxwz.com/2019/09/13/%e7%bd%91%e9%a1%b5%e7%89%88bt%e7%a3%81%e5%8a%9b%e4%b8%8b%e8%bd%bd%e5%b7%a5%e5%85%b7peerflix-server%ef%bc%8c%e8%be%b9%e4%b8%8b%e8%be%b9%e6%92%ad%e3%80%82/)

4.annie视频下载：[annie](https://zsxwz.com/2019/09/25/annie%e4%b8%80%e6%ac%be%e5%9f%ba%e4%ba%8ego%e7%9a%84%e5%90%84%e5%a4%a7%e8%a7%86%e9%a2%91%e7%bd%91%e7%ab%99%e8%a7%86%e9%a2%91%e4%b8%8b%e8%bd%bd%e5%88%a9%e5%99%a8/)

5.老司机cloud-torrent：https://bbs.zsxwz.com/thread-1304.htm


