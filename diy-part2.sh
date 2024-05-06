#!/bin/bash
#
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# Modify hostname and timezone
sed -i 's/OpenWrt/Clion-Router/g' package/base-files/files/bin/config_generate
sed -i 's/UTC/Asia\/Shanghai/g' package/base-files/files/bin/config_generate

# Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' package/lean/default-settings/files/zzz-default-settings

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
if [ -d package/lean ]; then 
  cd package/lean
  rm -rf luci-theme-argon
  rm -rf luci-app-argon-config
  git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git luci-theme-argon
  git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config.git luci-app-argon-config
  cd ../..
else
  cd package
  git clone https://github.com/jerrykuku/luci-theme-argon.git
  git clone https://github.com/jerrykuku/luci-app-argon-config.git
  cd ..
fi
