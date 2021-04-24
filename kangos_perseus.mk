#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/perseus/device.mk)

# Inherit some common Arrow stuff.
$(call inherit-product, vendor/kangos/config/common.mk)

TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some common KangOS stuff.

TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
USE_GAPPS := true

# Kangos official
KANGOS_BUILDTYPE := UNOFFICIAL

# Kangos Maintainer
PRODUCT_PRODUCT_PROPERTIES += \
  ro.kangos.maintainer=MickenKng \
  ro.kangos.cpu=SDM845

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := kangos_perseus
PRODUCT_DEVICE := perseus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX 3
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_ARCH := arm64

BUILD_FINGERPRINT := "Xiaomi/perseus/perseus:10/QKQ1.190828.002/V11.0.3.0.QEEMIXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="perseus-user 10 QKQ1.190828.002 V11.0.3.0.QEEMIXM release-keys" \
    PRODUCT_NAME="perseus"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
