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
AXION_CAMERA_REAR_INFO := 108
AXION_CAMERA_FRONT_INFO := 32
AXION_MAINTAINER := Shirayuki39
AXION_PROCESSOR := Helio_G99
PRODUCT_NO_CAMERA := false
BYPASS_CHARGE_SUPPORTED := false
TARGET_USES_USLMK := false

# Enable activity open override fix for low-end devices or devices affected by activity open/exit freezing issue 
PERF_ANIM_OVERRIDE := true

# CPU governor support
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
