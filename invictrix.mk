# Copyright (C) 2016 The Pure Nexus Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed under
# the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied. See the License for the specific language governing
# permissions and limitations under the License.

# Bootanimation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Inherit some common Invictrix stuff
$(call inherit-product, vendor/invictrix/config/common.mk)

# Inherit AOSP device configuration for bullhead
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# Override AOSP build properties
PRODUCT_NAME := invictrix_bullhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := bullhead
PRODUCT_MODEL := Nexus 5X
PRODUCT_MANUFACTURER := LGE

INVICTRIX_MAINTAINER = anirudhgupta109

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    PRIVATE_BUILD_DESC="bullhead-user 8.1.0 OPM6.171019.030.E1 4805388 release-keys"

BUILD_FINGERPRINT := google/bullhead/bullhead:8.1.0/OPM6.171019.030.E1/4805388:user/release-keys
