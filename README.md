# zstermux

一个termux一键脚本，一键安装运行各种好玩的，UnblockNeteaseMusic，aria2等等。

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
一些注意事项：

1.第一次安装，请先安装环境。国内网络不稳定，安装环境过程难免会丢失一些东西，重新安装一次环境即可。

2.百度网盘下载，一个是命令行版pcs-go，如果不是黑号就无需修改配置，如果是黑号，根据提示修改即可。

一个是网页版pcs-web，安卓版本没有修改配置选项，因此需要安装命令行版pcs-go。

3.云音乐代理，如果新版本失效了，请安装旧版本的云音乐。

4.aria2的配置安卓版本有一点点的差别，也可以使用推荐配置


预览图：

![图](https://ae01.alicdn.com/kf/Hbd1df584097043dba9aa4149f204a9b9G.jpg)
