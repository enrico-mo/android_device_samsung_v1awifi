#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/samsung/v1awifi

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Platform
BOARD_VENDOR := samsung
TARGET_SOC := exynos5420

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Bootloader
TARGET_OTA_ASSERT_DEVICE := v1awifi

# Kernel
TARGET_KERNEL_CONFIG := lineageos_deathly_v1awifi_defconfig
BOARD_CUSTOM_BOOTIMG := true

# IR Blaster
IR_HAS_ONE_FREQ_RANGE := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2300000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28378660864
BOARD_FLASH_BLOCK_SIZE := 4096

# SELinux
BOARD_SEPOLICY_DIRS += device/samsung/exynos5420-common/sepolicy

# Inherit from exynos5420-common
include device/samsung/exynos5420-common/BoardConfigCommon.mk

# TWRP specific build flags
#RECOVERY_VARIANT := twrp
#TW_THEME := landscape_hdpi
#DEVICE_RESOLUTION := 2560x1600
#RECOVERY_SDCARD_ON_DATA := true
#BOARD_HAS_NO_REAL_SDCARD := true
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
#TW_BRIGHTNESS_PATH := /sys/devices/platform/i2c-gpio.24/i2c-24/24-002c/backlight/panel/brightness
##TW_MAX_BRIGHTNESS := 255
#TW_NO_REBOOT_BOOTLOADER := true
#TW_HAS_DOWNLOAD_MODE := true
#TW_INCLUDE_CRYPTO := true
#TW_NO_EXFAT := true
#TW_NO_EXFAT_FUSE := true