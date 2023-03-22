#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oppo/find5

# inherit from APQ8064 common
-include device/oppo/apq8064-common/BoardConfigCommon.mk

# Board
TARGET_BOOTLOADER_BOARD_NAME := find5

# Kernel
TARGET_KERNEL_CONFIG += vendor/cyanogenmod_x909_defconfig

TARGET_SPECIFIC_HEADER_PATH += device/oppo/find5/include

TARGET_BOARD_INFO_FILE := device/oppo/find5/board-info.txt

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/oppo/find5/bluetooth

# Camera
TARGET_RELEASE_CPPFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# CM  Hardware
BOARD_HARDWARE_CLASS += device/oppo/find5/cmhw

BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_CACHEIMAGE_PARTITION_SIZE := 536870912
BOARD_PERSISTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648

# inherit from the proprietary version
-include vendor/oppo/find5/BoardConfigVendor.mk
