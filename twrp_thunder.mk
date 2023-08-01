#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
#

# Device Target Name
PRODUCT_RELEASE_NAME := POCO M4 5G

# Inherit from the Device Tree itself.
$(call inherit-product, device/xiaomi/thunder/device.mk)

# Inherit from TWRP-common stuffs, if building TWRP.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
#$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
# https://source.android.com/docs/core/ota/virtual_ab/implement#build-flags
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Enable updating of APEXes
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Device Identifier
PRODUCT_DEVICE := thunder
PRODUCT_NAME := twrp_thunder
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 22041219PG
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_BRAND)

#PRODUCT_BUILD_PROP_OVERRIDES += \
#    TARGET_DEVICE=thunder \
#    PRODUCT_NAME=thunder_p_ru \
#    PRIVATE_BUILD_DESC="light-user 12 TP1A.220624.014 V14.0.1.0.TLSRUXM release-keys"

#BUILD_FINGERPRINT := POCO/thunder_p_ru/thunder:13/TP1A.220624.014/V14.0.1.0.TLSRUXM:user/release-keys

