#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Soong
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml


# Keylayouts
PRODUCT_COPY_FILES += \
    device/samsung/msm8974-common/keylayout/klte/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
    device/samsung/msm8974-common/keylayout/klte/sec_touchkey.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/sec_touchkey.kl

# Radio Dual
PRODUCT_PACKAGES += \
    init.radiodual.rc

# Fingerprint
$(call inherit-product, device/samsung/klteduos/fingerprint/product.mk)

# NFC
$(call inherit-product, device/samsung/msm8974-common/nfc/pn547/product.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/klteduos/klteduos-vendor.mk)

# System Properties
$(call inherit-product, device/samsung/klteduos/system_prop.mk)

# msm8974-common
$(call inherit-product, device/samsung/msm8974-common/common.mk)
