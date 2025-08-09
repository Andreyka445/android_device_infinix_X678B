#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/infinix/X678B/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

BOARD_VENDOR := Infinix
PRODUCT_NAME := lineage_X678B
PRODUCT_DEVICE := X678B
PRODUCT_MANUFACTURER := Infinix
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X678B

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=X678B \
    BuildFingerprint=Infinix/X678B-OP/Infinix-X678B:14/UP1A.231005.007/250217V838:user/release-keys

# AxionAOSP Flags
AXION_CAMERA_REAR_INFO := 50
AXION_CAMERA_FRONT_INFO := 8
AXION_MAINTAINER := Shirayuki39
AXION_PROCESSOR := Helio_G99
PRODUCT_NO_CAMERA := false
BYPASS_CHARGE_SUPPORTED := false

# Define small and big core groups
AXION_CPU_SMALL_CORES := 0,1,2,3,4,5
AXION_CPU_BIG_CORES := 6,7

## CPUsets configuration
# CPUset used for bg/audio cpusets 
AXION_CPU_BG := 0-2

# CPUset used for foreground cpusets
AXION_CPU_FG := 2-7

# CPUset that will be used when limiting other cpusets except top-app
AXION_CPU_LIMIT_BG := 0-1

# CPUset that will be used to unlimit critical cpusets for UI
AXION_CPU_UNLIMIT_UI := 0-7

# CPUset that will be used when limiting critical cpusets for UI
AXION_CPU_LIMIT_UI := 2-5

# CPUset that will be used for critical display processes
AXION_CPU_DISPLAY := 6-7

# CPUset that will be used for audio processes e.g. audioserver
AXION_CPU_AUDIO := 0-3
