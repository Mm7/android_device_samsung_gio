# Copyright (C) 2009 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for crespo hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Inherit device specific files
$(call inherit-product, device/samsung/gio/device_gio.mk)
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Include GSM stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_gio
PRODUCT_DEVICE := gio
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-S5660
PRODUCT_MANUFACTURER := Samsung
