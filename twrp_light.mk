#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit from star device
$(call inherit-product, device/xiaomi/light/device.mk)

# Inherit some common recovery stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := light
PRODUCT_NAME := twrp_light
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22041219G
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RELEASE_NAME := light

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=light \
    PRODUCT_NAME=light \
    PRIVATE_BUILD_DESC="light-user 12 TP1A.220624.014 V14.0.1.0.TLSRUXM release-keys"

BUILD_FINGERPRINT := Redmi/light/light:13/TP1A.220624.014/V14.0.1.0.TLSRUXM:user/release-keys

