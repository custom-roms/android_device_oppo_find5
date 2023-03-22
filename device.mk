#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from apq8064-common
$(call inherit-product, device/oppo/apq8064-common/apq8064.mk)

# overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Overlays-RRO
PRODUCT_PACKAGES += \
    overlay

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Camera
PRODUCT_PACKAGES += \
    camera.msm8960

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    $(LOCAL_PATH)/keylayout/cyttsp-i2c.kl:system/usr/keylayout/cyttsp-i2c.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl

# Media profile
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Thermal config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermald-8064-find5.conf:system/etc/thermald.conf

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

# Init logos
PRODUCT_PACKAGES += \
    at.rle \
    fastboot.rle \
    initlogo.rle \
    tpupdate.rle \
    wlan.rle

# WiFi Display
# PRODUCT_SYSTEM_PROPERTIES += \
#     vendor.sys.video.disable.ubwc=1

# call the proprietary setup
$(call inherit-product, vendor/oppo/find5/find5-vendor.mk)
#$(call inherit-product-if-exists, vendor/oppo/find5/find5-vendor.mk)

# Inherit from apq8064-common
#$(call inherit-product, device/oppo/apq8064-common/apq8064.mk)
