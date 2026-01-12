#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_SOONG_NAMESPACES += \
	vendor/xiaomi/camera

# Overlays
PRODUCT_PACKAGES += \
	MiuiCameraOverlay \
	MiuiCameraOverlayIcon \
	MiuiCameraOverlayLeicaed

# Permissions
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,vendor/xiaomi/camera/proprietary/system/etc,$(TARGET_COPY_OUT_SYSTEM)/etc) \
	$(call find-copy-subdir-files,*,vendor/xiaomi/camera/proprietary/vendor/etc,$(TARGET_COPY_OUT_VENDOR)/etc)

# Camera
PRODUCT_PACKAGES += \
	libcamera_algoup_jni.xiaomi \
	libcamera_mianode_jni.xiaomi \
	libmicampostproc_client \
	vendor.xiaomi.hardware.campostproc@1.0 \
	MiuiCamera

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
	vendor/xiaomi/camera/configs/hidl/xiaomi_framework_compatibility_matrix.xml

PRODUCT_PACKAGES += \
	android.hidl.memory.block@1.0 \
	android.hidl.memory.block@1.0.vendor

# Init scripts
PRODUCT_COPY_FILES += \
	vendor/xiaomi/camera/init/init.miuicamera.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.miuicamera.rc

# Prop
PRODUCT_PRODUCT_PROPERTIES += \
	ro.com.google.lens.oem_camera_package=com.android.camera \
	ro.product.mod_device=surya_global \
	ro.miui.build.region=in \
	ro.miui.notch=1

PRODUCT_SYSTEM_PROPERTIES += \
	persist.vendor.camera.privapp.list=com.android.camera \
	vendor.camera.aux.packagelist=com.android.camera

# Shims
PRODUCT_PACKAGES += \
	libgui_shim_miuicamera
