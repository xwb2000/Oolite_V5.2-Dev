#!/bin/bash

pushd package/lean
git clone --depth=1 https://github.com/fw876/helloworld
rm -rf luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
git clone --depth=1 https://github.com/Lienol/openwrt-package
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr
rm -rf autocore
svn co https://github.com/project-openwrt/openwrt/branches/master/package/lean/autocore
popd
sed -i 's/192.168/10.168/g' package/base-files/files/bin/config_generate
