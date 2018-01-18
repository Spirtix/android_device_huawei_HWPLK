#
# Copyright (C) 2012 The CyanogenMod Project
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

# Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# It's 64-bit product
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Languages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/HWPLK/lineage_HWPLK.mk)

# Correct boot animation size for the screen
DEVICE_SCREEN_HEIGHT := 1920
DEVICE_SCREEN_WIDTH := 1080

PRODUCT_GMS_CLIENTID_BASE := android-huawei

PRODUCT_RELEASE_NAME := Lineage13
PRODUCT_NAME := lineage_HWPLK
PRODUCT_BOARD := PLK-LO1
PRODUCT_DEVICE := HWPLK
PRODUCT_BRAND := HONOR
PRODUCT_MODEL := HONOR-7
PRODUCT_MANUFACTURER := HUAWEI

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=PLK-L01
