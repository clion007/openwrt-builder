
#!/bin/bash
#
# File name: diy-part3.sh
# Description: OpenWrt DIY script part 3 (After download source code)
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
if [ -d openwrt/package/lean ]; then 
  cd openwrt/package/lean
  rm -rf luci-app-argon-config
  git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config.git luci-app-argon-config
else
  cd openwrt/package
  git clone https://github.com/jerrykuku/luci-app-argon-config.git
fi
