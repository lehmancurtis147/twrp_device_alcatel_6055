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
DEVICE_PATH                  := device/alcatel/idol4

BOARD_VENDOR                := TCL

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES  := true

# Architecture
TARGET_ARCH                 := arm64
TARGET_ARCH_VARIANT         := armv8-a
TARGET_CPU_ABI              := arm64-v8a
TARGET_CPU_ABI2             :=
TARGET_CPU_VARIANT          := cortex-a53

TARGET_2ND_ARCH             := arm
TARGET_2ND_ARCH_VARIANT     := armv7-a-neon
TARGET_2ND_CPU_ABI          := armeabi-v7a
TARGET_2ND_CPU_ABI2         := armeabi
TARGET_2ND_CPU_VARIANT      := cortex-a53

TARGET_BOARD_SUFFIX         := _64
TARGET_USES_64_BIT_BINDER   := true

# Platform
TARGET_BOARD_PLATFORM       := msm8952
TARGET_BOARD_PLATFORM_GPU   := qcom-adreno510

# Kernel
TARGET_USES_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL      := $(DEVICE_PATH)/prebuilt/kernel
BOARD_KERNEL_OFFSET         := 0x00008000
BOARD_KERNEL_PAGESIZE       := 2048
BOARD_KERNEL_BASE           := 0x80000000
BOARD_RAMDISK_OFFSET        := 0x01000000
BOARD_TAGS_OFFSET           := 0x00000100

BOARD_KERNEL_CMDLINE        := \
    'console=ttyHSL0,115200,n8 \
    androidboot.console=ttyHSL0 \
    androidboot.hardware=qcom \
    msm_rtb.filter=0x237 \
    ehci-hcd.park=3 \
    androidboot.bootdevice=7824900.sdhci \
    lpm_levels.sleep_disabled=1 \
    earlyprintk \
    androidboot.bootloader=L3CCJ0J0BX00 \
    androidboot.selinux=permissive \
    buildvariant=eng'

# MKBOOT ARGUEMENTS
BOARD_MKBOOTIMG_ARGS        := \
    --cmdline $(BOARD_KERNEL_CMDLINE) \
    --ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
    --tags_offset $(BOARD_TAGS_OFFSET) \
    --kernel_offset $(BOARD_KERNEL_OFFSET) \
    --base $(BOARD_KERNEL_BASE) \
    --pagesize $(BOARD_KERNEL_PAGESIZE) \
    --board ''

TARGET_OTA_ASSERT_DEVICE               := "idol4"

ENABLE_CPUSETS                         := true
ENABLE_SCHEDBOOST                      := true

# Partitions
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR       := true
BOARD_SUPPRESS_SECURE_ERASE            := true
BOARD_FLASH_BLOCK_SIZE                 := 131072

# Recovery
BOARD_HAS_LARGE_FILESYSTEM             := true
BOARD_HAS_NO_SELECT_BUTTON             := true

TARGET_USERIMAGES_USE_EXT4             := true
TARGET_USERIMAGES_USE_F2FS             := true

# TWRP
BOARD_HAS_NO_REAL_SDCARD               := true
BOARD_USES_QC_TIME_SERVICES            := true
BOARD_HAS_NO_MISC_PARTITION            := true
BOARD_RECOVERY_SWIPE                   := true
BOARD_SUPPRESS_EMMC_WIPE               := true
BOARD_USES_MMCUTILS                    := true

RECOVERY_SDCARD_ON_DATA                := true
RECOVERY_GRAPHICS_USE_LINELENGTH       := true

TARGET_KEYMASTER_WAIT_FOR_QSEE         := true
TARGET_HW_DISK_ENCRYPTION              := true
TARGET_RECOVERY_QCOM_RTC_FIX           := true

#TARGET_SYSTEM_PROP                     += $(LOCAL_PATH)/system.prop
TARGET_RECOVERY_FSTAB                  := $(DEVICE_PATH)/recovery/root/etc/twrp.fstab
#TARGET_USE_CUSTOM_LUN_FILE_PATH        := /sys/devices/platform/msm_hsusb/gadget/lun0/file

PLATFORM_SECURITY_PATCH                := 2099-12-31
PLATFORM_VERSION                       := 16.1.0

TW_THEME                               := portrait_hdpi
TW_USE_TOOLBOX                         := true
TW_SCREEN_BLANK_ON_BOOT                := true
TW_EXTRA_LANGUAGES                     := true
TW_INCLUDE_FB2PNG                      := true
#TW_INCLUDE_CRYPTO                      := true
TW_NO_SCREEN_BLANK                     := true
TW_NO_BATT_PERCENT                     := false
TW_BRIGHTNESS_PATH                     := /sys/class/leds/lcd-backlight/brightness
TW_DEFAULT_BRIGHTNESS                  := 102
TWHAVE_SELINUX                         := true
TW_DEVICE_VERSION                      := 1.5

TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
