#!/bin/bash
#
# https://github.com/clion/openWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git lienolpackages https://github.com/Lienol/openwrt-packages.git;23.05' >>feeds.conf.default
echo 'src-git lienolluci https://github.com/Lienol/openwrt-luci.git;23.05' >>feeds.conf.default
echo 'src-git leanpackages https://github.com/coolsnowwolf/packages' >>feeds.conf.default
echo 'src-git leanluci https://github.com/coolsnowwolf/luci' >>feeds.conf.default
