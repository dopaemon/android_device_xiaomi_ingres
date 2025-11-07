#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from ingres device
$(call inherit-product, device/xiaomi/ingres/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# AxionOS
TARGET_DISABLE_EPPE := true
TARGET_ENABLE_BLUR := true
AXION_CAMERA_REAR_INFO := 64,8,2
AXION_CAMERA_FRONT_INFO := 20
AXION_MAINTAINER := KernelPanix
AXION_PROCESSOR := Snapdragon_8_Gen_1
BYPASS_CHARGE_SUPPORTED ?= false
HBM_SUPPORTED := false
TARGET_INCLUDE_VIPERFX := true
TORCH_STR_SUPPORTED := true

PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.perf.scroll_opt = true \
    persist.sys.perf.scroll_opt.heavy_app = 2

PRODUCT_NAME := lineage_ingres
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
