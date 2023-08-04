#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
#

LOCAL_PATH := device/xiaomi/thunder

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 33

# API
PRODUCT_SHIPPING_API_LEVEL := 30

# Platform
PRODUCT_PLATFORM := mt6833

# A/B
ENABLE_VIRTUAL_AB := true

# fastboot/d hal
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-service \
    android.hardware.boot@1.2-impl.recovery 

PRODUCT_PACKAGES += \
    bootctrl.mt6833

PRODUCT_PACKAGES += \
    bootctrl.mt6833 \
    libgptutils \
    libz \
    libcutils

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Health Hal
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Otacert
#PRODUCT_EXTRA_RECOVERY_KEYS += \
#    $(DEVICE_PATH)/security/miui_releasekey

#  Additional binaries & libraries needed for recovery
#TARGET_RECOVERY_DEVICE_MODULES += \
#    libkeymaster4 \
#    libkeymaster41 \
#    libpuresoftkeymasterdevice

#RECOVERY_LIBRARY_SOURCE_FILES += \
#    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
#    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster41.so \
#    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so
