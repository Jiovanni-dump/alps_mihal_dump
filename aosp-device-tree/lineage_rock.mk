#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from rock device
$(call inherit-product, device/xiaomi/rock/device.mk)

PRODUCT_DEVICE := rock
PRODUCT_NAME := lineage_rock
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22071219AI
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi_phoneext4_global-user 13 TP1A.220624.014 V14.0.7.0.TLUMIXM release-keys"

BUILD_FINGERPRINT := Redmi/rock/rock:12/TP1A.220624.014/V14.0.7.0.TLUMIXM:user/release-keys
