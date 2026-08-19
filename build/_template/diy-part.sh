#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
# DIY扩展二合一了，在此处可以增加插件
# 模板骨架：按需修改/新增以下变量与命令，即可作为新源码的自定义配置

# 后台IP设置
export Ipv4_ipaddr="192.168.101.1"          # 修改openwrt后台地址(填0为关闭)
export Netmask_netm="255.255.255.0"         # IPv4 子网掩码（默认：255.255.255.0）(填0为不作修改)
export Op_name="OpenWrt"                    # 修改主机名称(填0为不作修改)

# 内核和系统分区大小(不是每个机型都可用)
export Kernel_partition_size="0"            # 内核分区大小(填0为不作修改)
export Rootfs_partition_size="220"          # 系统分区大小(填0为不作修改，默认最小180)

# 默认主题设置
export Mandatory_theme="bootstrap"          # 将bootstrap替换您需要的主题为必选主题(填0为不作修改)
export Default_theme="bootstrap"            # 多主题时,选择某主题为默认第一主题 (填0为不作修改)

# 旁路由选项
export Gateway_Settings="0"                 # 旁路由设置 IPv4 网关(填0为不作修改)
export DNS_Settings="0"                     # 旁路由设置 DNS(填0为不作修改)
export Broadcast_Ipv4="0"                   # 设置 IPv4 广播(填0为不作修改)
export Disable_DHCP="0"                     # 旁路由关闭DHCP功能(1为启用命令,填0为不作修改)
export Disable_Bridge="0"                   # 旁路由去掉桥接模式(1为启用命令,填0为不作修改)
export Create_Ipv6_Lan="0"                  # 爱快+OP双系统时,爱快接管IPV6,在OP创建IPV6的lan口接收IPV6信息(1为启用命令,填0为不作修改)

# IPV6、IPV4 选择
export Enable_IPV6_function="1"             # 编译IPV6固件(1为启用命令,填0为不作修改)
export Enable_IPV4_function="0"             # 编译IPV4固件(1为启用命令,填0为不作修改)

# 替换passwall的源码(默认luci分支)
export PassWall_luci_branch="0"             # passwall的源码分支选择(填0为使用luci分支,填1为使用luci-smartdns-new-version分支)

# 替换OpenClash的源码(默认master分支)
export OpenClash_branch="0"                 # OpenClash的源码分支选择(填0为使用master分支,填1为使用dev分支)
export OpenClash_Core="0"                   # 增加OpenClash时,把核心下载好(填1为下载【dev单核】,填2为下载【dev/meta/premium三核】,填0为不需要核心)

# 个性签名,默认增加年月日[$(TZ=UTC-8 date "+%Y.%m.%d")]
export Customized_Information="$(TZ=UTC-8 date "+%Y.%m.%d")"  # 个性签名,你想写啥就写啥，(填0为不作修改)

# 更换固件内核
export Replace_Kernel="0"                   # 更换内核版本(填入内核x.x版本号,填0为不作修改)

# 设置免密码登录(个别源码本身就没密码的)
export Password_free_login="1"              # 设置首次登录后台密码为空(1为启用命令,填0为不作修改)

# 增加AdGuardHome插件和核心
export AdGuardHome_Core="0"                 # 编译固件时自动增加AdGuardHome插件和核心(1为启用命令,填0为不作修改)

# 禁用ssrplus和passwall的NaiveProxy
export Disable_NaiveProxy="1"               # 因个别源码的分支不支持编译NaiveProxy,为减少错误,打开此选项后会干掉NaiveProxy不进行编译(1为启用命令,填0为不作修改)

# 开启NTFS格式盘挂载
export Automatic_Mount_Settings="0"         # 编译时加入开启NTFS格式盘挂载的所需依赖(1为启用命令,填0为不作修改)

# 去除网络共享(autosamba)
export Disable_autosamba="1"                # 去掉源码默认自选的luci-app-samba或luci-app-samba4(1为启用命令,填0为不作修改)

# 其他
export Ttyd_account_free_login="1"          # 设置ttyd免密登录(1为启用命令,填0为不作修改)
export Delete_unnecessary_items="1"         # 个别机型内一堆其他机型固件,删除其他机型的,只保留当前主机型固件(1为启用命令,填0为不作修改)
export Disable_53_redirection="0"           # 删除DNS强制重定向53端口防火墙规则(1为启用命令,填0为不作修改)
export Cancel_running="1"                   # 取消路由器每天跑分任务(1为启用命令,填0为不作修改)


# 修改插件名字
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' `egrep "Turbo ACC 网络加速" -rl ./`
sed -i 's/"实时流量监测"/"流量监测"/g' `egrep "实时流量监测" -rl ./`


# 整理固件包时候,删除您不想要的固件或者文件,让它不需要上传到Actions空间(根据编译机型变化,自行调整删除名称)
cat >"$CLEAR_PATH" <<-EOF
packages
config.buildinfo
feeds.buildinfo
sha256sums
version.buildinfo
profiles.json
EOF

# 在线更新时，删除不想保留固件的某个文件，在EOF跟EOF之间加入删除代码，记住这里对应的是固件的文件路径，比如： rm -rf /etc/config/luci
cat >>$DELETE <<-EOF
EOF
