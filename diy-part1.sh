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
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src/gz openwrt_kiddin9 https://dl.openwrt.ai/latest/packages/x86_64/kiddin9' >>feeds.conf.default
