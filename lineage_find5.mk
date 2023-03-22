#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from find5 device
$(call inherit-product, device/oppo/find5/device.mk)

#$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
#$(call inherit-product, device/oppo/find5/full_find5.mk)

PRODUCT_BRAND := Oppo
PRODUCT_DEVICE := find5
PRODUCT_MANUFACTURER := Oppo
# Just invented a model number for debugging purposes
PRODUCT_MODEL := 230401find5
PRODUCT_NAME := lineage_find5

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_SYSTEM_NAME := find5_global
PRODUCT_SYSTEM_DEVICE := find5

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="find5_global-user LineageOS 18.1 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
# BUILD_ID=RQ3A.211001.001
BUILD_FINGERPRINT := Oppo/find5_global/find5:lineageos/18.1:user/release-keys