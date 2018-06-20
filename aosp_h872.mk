# Copyright 2018 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, device/lge/h872/full_h872.mk)

IS_ARM64 := true

# Include Official OTA Package
# WITH_OFFICIALOTA := true

# Support Beta OTA Opt-in (Requires additional ota xml)
BETA_OTA := true

TARGET_TRICK_SELINUX := true

# Include pure telephony configuration
$(call inherit-product, vendor/pure/configs/pure_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := h872

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g6" \
    PRODUCT_NAME="lucye_tmo_us" \
    PRIVATE_BUILD_DESC="lucye_tmo_us-user 7.0 NRD90U 17062223981e1 release-keys"

BUILD_FINGERPRINT := "lge/lucye_tmo_us/lucye:7.0/NRD90U/17062223981e1:user/release-keys"
