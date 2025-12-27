# Leica Camera 5.0 for POCO X3 NFC

### Cloning :
- Clone this repo in vendor/xiaomi/camera in your working directory by :
```
git clone https://github.com/kylieeXD/proprietary_vendor_xiaomi_camera vendor/xiaomi/camera
```

Make these changes in **device.mk**

**device.mk**
```
# MiuiCamera
$(call inherit-product, vendor/xiaomi/camera/config.mk)
```

### Source Patch
- This is needed for parallel proccessing
```
https://github.com/RisingTechOSS/android_frameworks_base/commit/71d5c25e69c6a8b0a065c83b038c59f1e54370e7
```

## Credits

### Original mod - https://github.com/a406010503/Miui_Camera

## Support

### https://t.me/cilokg05 <br>


