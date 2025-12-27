PRODUCT_SOONG_NAMESPACES += \
	vendor/xiaomi/camera

PRODUCT_PACKAGES += \
	MiuiCameraOverlay

# Surya blobs
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,vendor/xiaomi/camera/configs/surya/system/lib64,$(TARGET_COPY_OUT_SYSTEM)/lib64) \
	$(call find-copy-subdir-files,*,vendor/xiaomi/camera/configs/surya/vendor/lib64,$(TARGET_COPY_OUT_VENDOR)/lib64) \
	vendor/xiaomi/camera/configs/surya/lib64/libcamera_algoup_jni.xiaomi.so:$(TARGET_COPY_OUT_SYSTEM)/priv-app/MiuiCamera/lib/arm64/libcamera_algoup_jni.xiaomi.so

# Prop
PRODUCT_SYSTEM_PROPERTIES += \
	persist.vendor.camera.privapp.list=com.android.camera \
	persist.sys.cam.skip_detach_image=true