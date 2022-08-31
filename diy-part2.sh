#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# https://github.com/yfdoor/OpenWrt/blob/master/.github/workflows/OpenWrt-Build.yml
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.10/g' package/base-files/files/bin/config_generate



#update golang
pushd feeds/packages/lang
rm -rf golang && svn co https://github.com/openwrt/packages/trunk/lang/golang
popd
