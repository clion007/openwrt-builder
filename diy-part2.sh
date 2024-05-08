#!/bin/bash
#
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' ./package/base-files/files/bin/config_generate

# Modify hostname and timezone
sed -i 's/OpenWrt/Clion-Router/g' ./package/base-files/files/bin/config_generate
sed -i 's/UTC/Asia\/Shanghai/g' ./package/base-files/files/bin/config_generate

# Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' ./package/lean/default-settings/files/zzz-default-settings

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile
argondir=./feeds/luci/themes/luci-theme-argon
if [ -d $argondir ]; then 
  rm -rf ./feeds/luci/themes/luci-theme-argon
fi
git clone https://github.com/jerrykuku/luci-theme-argon.git ./feeds/luci/themes/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config.git ./feeds/luci/themes/luci-theme-argon-config
bgdir=./feeds/luci/themes/luci-theme-argon/htdocs/luci-static/argon/backgroun
rm -rf $bgdir/*
cp -r $GITHUB_WORKSPACE/source/img/* $bgdir/

# Add passwall packages
git clone -b main https://github.com/xiaorouji/openwrt-passwall.git package/passwall
git clone -b main https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall

# Add istore packages
git clone -b main https://github.com/linkease/istore.git package/istore
