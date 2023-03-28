
[[Telegram聊天吹水群](https://t.me/heiheiheio)]

---

<details>
<summary>🆘编译教程</summary>
<br>
<br />
<br>

《[github actions编译教程](https://github.com/danshui-git/shuoming#%E7%BC%96%E8%AF%91%E6%95%99%E7%A8%8B)》

《[晶晨固件打包设置教程](https://github.com/danshui-git/shuoming/blob/master/Amlogic.md)》

《[本地Ubuntu一键编译](https://github.com/281677160/bendi)》

《[本地一键提取.config然后在云编译脚本使用](https://github.com/281677160/bendi)》

《[在线更新固件插件说明](https://github.com/danshui-git/shuoming/blob/master/%E5%AE%9A%E6%97%B6%E6%9B%B4%E6%96%B0%E6%8F%92%E4%BB%B6.md)》

《[Telegram中文设置方法](https://github.com/danshui-git/shuoming/blob/master/tele.md)》

<br />
</details>

---

<details>
<summary>🆙更新说明</summary>
<br>
<br />
<br>

2022年x月x号，

1、增加了编译源码的选择，同作者源码的源码分支之间可以自由切换编译

 2、晶晨系列固件不限制一个源码，理论上可以编译出rootfs.tar.gz包的，应该都可以打包使用，比较常用的有（天灵的openwrt-21.02分支、大雕的master分支、官方的master分支），固件编译跟打包分2次进行，这样免除了打包空间不足，或者编译+打包时间不足的问题，已经编译出了的rootfs.tar.gz可以使用手动启动打包程序，进行多次打包操作
 
 3、luci-theme-argon主题对官方的兼容不太好，有可能使用不了，编译的时候如果有用这个主题，最好把luci-theme-bootstrap主题一起编译，luci-theme-argon主题不能用的时候可以使用SSH工具连接固件后台，然后进入【"/etc/config/luci"】手动切换主题，把【option mediaurlbase '/luci-static/argon'】改成【option mediaurlbase '/luci-static/bootstrap'】保存就好了
 
 4、luci-app-oscam插件，云编译，编译不成功，云编译的时候切莫选择此插件，本地编译倒是可以编译成功。
 
 5、luci-app-gost插件有段时间也编译不成功，我找了个比较老的版本，也修改了一下，可以编译成功了，没测试过能不能用，有用这个插件的希望可以反馈一下
 
 6、大雕源码，有些机型编译增加mac80211驱动的时候会编译错误的，可以尝试打开【export Replace_mac80211="1"】，默认0是不使用，改成1的试试，还是编译错误的话，我也无解了，我也是在他源码仓库的issues里面看到有人用官方的mac80211替换可以编译成功的，我也测试过，是可以编译成功，但是功能还能不能用就不了解了

<br />
</details>

---

 ### 鸣谢！
 感谢以下各位大佬（排名无分先后）<br />
 
 [`coolsnowwolf`](https://github.com/coolsnowwolf/lede/tree/master)
 [`Lienol`](https://github.com/Lienol/openwrt/tree/21.02)
 [`immortalwrt`](https://github.com/immortalwrt/immortalwrt)
 [`openwrt`](https://github.com/openwrt/openwrt)
 [`x-wrt`](https://github.com/x-wrt/x-wrt)
 [`P3TERX`](https://github.com/P3TERX/Actions-OpenWrt)
 [`Hyy2001X`](https://github.com/Hyy2001X/AutoBuild-Actions)
 [`dhxh`](https://github.com/dhxh/Openwrt-Build)
 [`ophub`](https://github.com/ophub/amlogic-s9xxx-openwrt)
 [`nicholas-opensource`](https://github.com/nicholas-opensource/OpenWrt-Autobuild)
 [`hx210`](#/README.md)
 [`hyird`](#/README.md)
 [`World Peace`](#/README.md)
 [`klever1988`](https://github.com/klever1988/cachewrtbuild)
 [`actions`](https://github.com/actions/upload-artifact)
 [`svenstaro`](https://github.com/svenstaro/upload-release-action)
