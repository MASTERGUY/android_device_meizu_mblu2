#!/bin/bash
repo init -q -u https://github.com/SKYHAWK-Recovery-Project/platform_manifest_twrp_omni.git -b 9.0 --depth 1
repo sync -c -q --force-sync --no-clone-bundle --optimized-fetch --prune --no-tags -j$(nproc --all)
git clone https://github.com/SHRP-Devices/device_meizu_mblu2 device/meizu/mblu2/
rm -rf bootable/recovery/gui/theme/shrp_portrait_hdpi/portrait.xml
wget -P bootable/recovery/gui/theme/shrp_portrait_hdpi/ https://raw.githubusercontent.com/MASTERGUY/SHRP_modified_mblu2/master/bootable/recovery/gui/theme/shrp_portrait_hdpi/portrait.xml
. build/envsetup.sh
lunch omni_mblu2-eng
mka recoveryimage
  ZIP=$(ls out/target/product/mblu2/SHRP*.zip)
curl https://bashupload.com/$ZIP --data-binary @$ZIP
