#
# Copyright (C) 2019 The Android Open Source Project
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
DEVICE_PATH           := device/alcatel/idol4

PRODUCT_RELEASE_NAME := "idol4"

$(call inherit-product, vendor/omni/config/gsm.mk)
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, build/target/product/product_launched_with_m.mk)
$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE       := idol4
PRODUCT_NAME         := omni_idol4
PRODUCT_BRAND        := Alcatel
PRODUCT_MODEL        := Idol 4 6055U
PRODUCT_MANUFACTURER := tcl

PRODUCT_PACKAGES += \
    adbd \
    fastboot \
    healthd \
    fuelgauged_static \
    boot_control \
    power.default \
    power.mt6750 \
    kpoc_charger \
    libfuelgauge_static \
    gzip

#PRODUCT_COPY_FILES += \
#   $(DEVICE_PATH)/system.prop:root/system.prop
