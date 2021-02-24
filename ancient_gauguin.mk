#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from gauguin device
$(call inherit-product, device/xiaomi/gauguin/device.mk)

# Inherit some common ancient stuff.
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

FORCE_OTA := true
TARGET_BOOT_ANIMATION_RES := 1080
# Face Unlock
$(call inherit-product, external/motorola/faceunlock/config.mk)
# Google Apps
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
$(call inherit-product, vendor/gapps/config.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := ancient_gauguin
PRODUCT_DEVICE := gauguin
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
