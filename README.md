![SHRP](https://github.com/SKYHAWK-Recovery-Project/platform_manifest_twrp_omni/raw/9.0/banner.png)

---------------

**SHRP Device Source Code For Meizu M2**

**Build SHRP**

To initialize your local repository using the OMNIROM trees to build SHRP, use a command like this:-

*repo init -u git://github.com/SKYHAWK-Recovery-Project/platform_manifest_twrp_omni.git -b 9.0*

**Then to sync up:**

*repo sync*

**After sync completes**

*cd source-dir    (eg: cd omni)*
  
*export ALLOW_MISSING_DEPENDENCIES=true*

*. build/envsetup.sh*

*lunch omni_mblu2-eng*

*mka recoveryimage*
  
### [Guide For Other Devices](https://skyhawk-recovery-project.github.io/#/guide) to Build SHRP 
