#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from ingres device
$(call inherit-product, device/xiaomi/ingres/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# CherishOS
TARGET_DISABLE_EPPE := true
WITH_GMS := true
TARGET_USES_PICO_GAPPS := true
TARGET_HAS_UDFPS := true
CHERISH_BUILD_TYPE := UNOFFICIAL
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.cherish.maintainer=KernelPanix

PRODUCT_NAME := cherish_ingres
PRODUCT_DEVICE := ingres
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 21121210G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="ingres-user 14 UKQ1.240624.001 OS2.0.5.0.ULJCNXM release-keys" \
    BuildFingerprint=Redmi/ingres/ingres:14/UKQ1.240624.001/OS2.0.5.0.ULJCNXM:user/release-keys \
    DeviceProduct=ingres \
    SystemName=ingres

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
