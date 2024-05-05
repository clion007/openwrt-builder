#!/bin/bash
#
# https://github.com/clion/openWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# Enable helloworld feed source
grep -i "helloworld" feeds.conf.default >/dev/null
if [ $? -eq 0 ]; then
  # Uncomment a feed source
　sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
else
  # Add helloworld feed source
　echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
fi

# Add other feed sources
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"
echo "src-git istore https://github.com/linkease/istore;main" >> "feeds.conf.default"
