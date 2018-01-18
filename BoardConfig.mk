#
# Copyright (C) 2016 The CyanogenMod Project
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


# use new.dat packages
BLOCK_BASED_OTA := false

# Hack for build
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

#Add ArtCompile
WITH_DEXPREOPT := true

LOCAL_PATH := device/huawei/HWPLK

BOARD_USES_GENERIC_AUDIO := false

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
ANDROID_64=true

# Platform
BOARD_VENDOR := HUAWEI
BOARD_VENDOR_PLATFORM := hi3635
TARGET_BOOTLOADER_BOARD_NAME := HWPLK
TARGET_BOARD_PLATFORM := hi3635
TARGET_BOARD_PLATFORM_GPU := mali-t628mp4
TARGET_SOC := kirin935
HISI_TARGET_PRODUCT := hi3635
ENABLE_CPUSETS := true

# Assert
TARGET_OTA_ASSERT_DEVICE := hi3635,PLK,HWPLK,PLK-L01,plk-l01

# Architecture and CPU
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a53
#TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
#TARGET_2ND_CPU_VARIANT := cortex-a15

TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HIGH_OPTIMIZATION := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI_LIST := arm64-v8a,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT := armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_64_BIT := arm64-v8a

# 64 bit
TARGET_USES_64_BIT_BINDER := true
TARGET_USES_HISI_DTIMAGE := true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true

#Special Huawei flags
TARGET_USES_HISI_3635 := true
LOCAL_CFLAGS += -DHISI_3635
TARGET_USES_HUAWEI_MEDIA := true
TARGET_USES_HUAWEI_LOG := true
TARGET_USES_HUAWEI_APP_INFO := true
COMMON_GLOBAL_CFLAGS += -DHUAWEI_LOG 

# Init
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true

#Fs
TARGET_USERIMAGES_USE_EXT4 := true

#Keystore
TARGET_PROVIDES_KEYMASTER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Camera
USE_CAMERA_STUB := false
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_NUMBER_OF_CAMERAS := 2
BOARD_CAMERA_HAVE_ISO := true
COMMON_GLOBAL_CFLAGS += -DHAVE_ISO
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# Display
TARGET_DISPLAY_USE_RETIRE_FENCE := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_USE_PAN_DISPLAY := true
BRIGHTNESS_SYS_FILE := "/sys/devices/platform/balong_fb.1/leds/lcd_backlight0/brightness"

# Graphics
ANDROID_ENABLE_RENDERSCRIPT := true
BOARD_EGL_CFG := $(LOCAL_PATH)/prebuilt/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_HARDWARE_3D  := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_USES_ION := true

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/sys/touchscreen/easy_wakeup_gesture"
BOARD_HARDWARE_CLASS := \
    $(LOCAL_PATH)/cmhw \
    hardware/cyanogen/cmhw

# RIL
COMMON_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING
BOARD_RIL_CLASS :=  ../../../device/huawei/HWPLK/ril/HwHisiRIL.java
TARGET_RIL_VARIANT := proprietary
PROTOBUF_SUPPORTED := true
SIM_COUNT := 2

# GPS
USE_DEVICE_SPECIFIC_GPS := true
TARGET_NO_RPC := true

# Non PIE Support to run GPS
TARGET_NEEDS_NON_PIE_SUPPORT := true

# Kernel
TARGET_PREBUILT_KERNEL := device/huawei/HWPLK/kernel

BOARD_KERNEL_CMDLINE := mem=3072M coherent_pool=512K mmcparts=mmcblk0:p1(vrl),p2(vrl_backup),p6(modemnvm_factory),p9(splash),p10(modemnvm_backup),p11(modemnvm_img),p12(modemnvm_system),p14(3rdmodemnvm),p15(3rdmodemnvmback),p17(modem_om),p20(modemnvm_update),p30(modem),p31(modem_dsp),p32(dfx),p33(3rdmodem) androidboot.selinux=enforcing ate_enable=true
BOARD_KERNEL_BASE := 0x00678000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07588000 --tags_offset 0xffb88000
TARGET_USES_UNCOMPRESSED_KERNEL := true

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOTIMAGE_PARTITION_SIZE     := 25165824
BOARD_CACHEIMAGE_PARTITION_SIZE    := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11572084736
BOARD_FLASH_BLOCK_SIZE := 4096

# Recovery
####TODO
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/HWPLK/kernel-recovery
TARGET_RECOVERY_INITRC := device/huawei/HWPLK/recovery/root/init.rc

RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
DEVICE_RESOLUTION := 1080x1920
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_RC := true
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun/file
BOARD_HAS_NO_SELECT_BUTTON := true

# Sepolisy

#include device/huawei/HWPLK/sepolicy/sepolicy.mk

#BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepoliсy

# USB mass storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 19

# Wi-Fi
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4339
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcm4339_hw.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcm4339_apsta_hw.bin"
WIFI_DRIVER_MODULE_NAME          := "dhd"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/vendor/firmware/fw_bcm4339_hw.bin nvram_path=/system/vendor/firmware/nvram4339_hw.txt"
WIFI_DRIVER_MODULE_AP_ARG        := "firmware_path=/system/vendor/firmware/fw_bcm4339_apsta_hw.bin nvram_path=/system/vendor/firmware/nvram4339_hw.txt"
WIFI_BAND                        := 802_11_ABG

# Enable WEBGL in WebKit
ENABLE_WEBGL := true
