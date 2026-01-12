# MiuiCamera v4.5 for POCO X3 NFC

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

Make these changes in **BoardConfig.mk**

**BoardConfig.mk**
```
# Camera Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += vendor/xiaomi/camera/sepolicy/vendor
```
