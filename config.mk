#
# Copyright (C) 2023 Paranoid Android
# 
# SPDX-License-Identifier: Apache-2.0
# 

# Namespace
PRODUCT_SOONG_NAMESPACES += \
	vendor/xiaomi/camera

# Camera
PRODUCT_PACKAGES += \
	libcamera_algoup_jni.xiaomi \
	libcamera_mianode_jni.xiaomi \
	libmicampostproc_client \
	vendor.xiaomi.hardware.campostproc@1.0 \
	MiuiCamera
