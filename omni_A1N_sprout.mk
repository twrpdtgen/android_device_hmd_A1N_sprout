#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from A1N_sprout device
$(call inherit-product, device/hmd/A1N_sprout/device.mk)

PRODUCT_DEVICE := A1N_sprout
PRODUCT_NAME := omni_A1N_sprout
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 8 Sirocco
PRODUCT_MANUFACTURER := hmd

PRODUCT_GMS_CLIENTID_BASE := android-hmd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Avenger_00WW-user 10 QKQ1.190828.002 00WW_5_140 release-keys"

BUILD_FINGERPRINT := Nokia/Avenger_00WW/A1N_sprout:10/QKQ1.190828.002/00WW_5_140:user/release-keys
