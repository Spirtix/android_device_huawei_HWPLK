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

# Memory
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

# Dalvik
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)

# Vendor
$(call inherit-product, vendor/huawei/HWPLK/HWPLK-vendor.mk)

# Extra Libs
#$(call inherit-product-if-exists, $(LOCAL_PATH)/libc_huawei_symbols/Android.mk)

LOCAL_PATH := device/huawei/HWPLK

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_AAPT_CONFIG := hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Root
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/root/sbin/hdbd:root/sbin/hdbd \
	$(LOCAL_PATH)/root/sbin/hw_ueventd:root/sbin/hw_ueventd \
	$(LOCAL_PATH)/root/sbin/kmsgcat:root/sbin/kmsgcat \
	$(LOCAL_PATH)/root/sbin/logctl_service:root/sbin/logctl_service \
	$(LOCAL_PATH)/root/sbin/ntfs-3gd:root/sbin/ntfs-3gd \
	$(LOCAL_PATH)/root/sbin/oeminfo_nvm_server:root/sbin/oeminfo_nvm_server \
	$(LOCAL_PATH)/root/sbin/teecd:root/sbin/teecd \
    	$(LOCAL_PATH)/root/sbin/volisnotd:root/sbin/volisnotd \
	$(LOCAL_PATH)/root/sbin/hw_ueventd:root/sbin/hw_ueventd \
	$(LOCAL_PATH)/root/sbin/watchdogd:root/sbin/watchdogd \
	$(LOCAL_PATH)/root/fstab.hi3635:root/fstab.hi3635 \
	$(LOCAL_PATH)/root/init.audio.rc:root/init.audio.rc \
	$(LOCAL_PATH)/root/init.balong_modem.rc:root/init.balong_modem.rc \
	$(LOCAL_PATH)/root/init.chip.usb.rc:root/init.chip.usb.rc \
	$(LOCAL_PATH)/root/init.camera.rc:root/init.camera.rc \
	$(LOCAL_PATH)/root/init.connectivity.bcm4339.rc:root/init.connectivity.bcm4339.rc \
	$(LOCAL_PATH)/root/init.connectivity.gps.rc:root/init.connectivity.gps.rc \
	$(LOCAL_PATH)/root/init.connectivity.rc:root/init.connectivity.rc \
	$(LOCAL_PATH)/root/init.device.rc:root/init.device.rc \
	$(LOCAL_PATH)/root/init.extmodem.rc:root/init.extmodem.rc \
	$(LOCAL_PATH)/root/init.hi3635.rc:root/init.hi3635.rc \
	$(LOCAL_PATH)/root/init.hisi.rc:root/init.hisi.rc \
	$(LOCAL_PATH)/root/init.platform.rc:root/init.platform.rc \
	$(LOCAL_PATH)/root/init.post-fs-data.rc:root/init.post-fs-data.rc \
	$(LOCAL_PATH)/root/init.tee.rc:root/init.tee.rc \
	$(LOCAL_PATH)/root/init.rc:root/init.rc \
	$(LOCAL_PATH)/root/init.usb.rc:root/init.usb.rc \
	$(LOCAL_PATH)/root/init.usb.configfs.rc:root/init.usb.configfs.rc \
	$(LOCAL_PATH)/root/resetFactory.cfg:root/resetFactory.cfg \
	$(LOCAL_PATH)/root/ueventd.rc:root/ueventd.rc \
	$(LOCAL_PATH)/root/ueventd.hi3635.rc:root/ueventd.hi3635.rc

PRODUCT_COPY_FILES += \
    	system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc \
    	system/core/rootdir/init.zygote32.rc:root/init.zygote32.rc

#Bluetooth
PRODUCT_COPY_FILES += \
    	$(LOCAL_PATH)/bluetooth/bt_stack_beta.conf:system/etc/bluetooth/bt_stack_beta.conf \
    	$(LOCAL_PATH)/bluetooth/bt_stack_log.conf:system/etc/bluetooth/bt_stack_log.conf \
    	$(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# Permissions 
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.external.xml:system/etc/permissions/android.hardware.camera.external.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
	frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
	frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
	frameworks/native/data/etc/android.software.backup.xml:system/etc/permissions/android.software.backup.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

PRODUCT_COPY_FILES += \
    	$(LOCAL_PATH)/prebuilt/etc/permissions/com.huawei.audioalgo.xml:system/etc/permissions/com.huawei.audioalgo.xml

#####Try to start HWC
PRODUCT_PACKAGES += \
    	hwcomposer.hi3635

## Shim libs
PRODUCT_PACKAGES += \
	libpsxhelper \
	libservices.huawei \
	libpsxuihelper

# File System
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs

# Add openssh support for remote debugging and job submission
PRODUCT_PACKAGES += \
    	ssh \
    	sftp \
    	scp \
    	sshd \
    	ssh-keygen \
    	sshd_config \
    	start-ssh \
    	uim \
    	wpa_supplicant

# Build and run only ART
#PRODUCT_RUNTIMES := \
#    	runtime_libart_default

# Needed to sync the system clock with the RTC clock
PRODUCT_PACKAGES += \
    	hwclock

# Include USB speed switch App
PRODUCT_PACKAGES += \
    	UsbSpeedSwitch

# Build libion for new double-buffering HDLCD driver
PRODUCT_PACKAGES += \
    	libion

###Custom Power
PRODUCT_PACKAGES += \
    	power.hi3635

# Charger
PRODUCT_PACKAGES += \
	charger

# Graphic		
PRODUCT_PACKAGES += \
	libGLES_android \
	libEGL \
	libGLESv1_CM \
	libGLESv2 \
    	gralloc.hi3635	

# Build gatord daemon for DS-5/Streamline
PRODUCT_PACKAGES += \
    	gatord

# Include ION tests
PRODUCT_PACKAGES += \
    	iontest \
    	ion-unit-test

# Build audio libraries
PRODUCT_PACKAGES += \
    	audio.a2dp.default \
	sound_trigger.primary.hi3635 \
	audio_policy.stub \
	audio.usb.default \
	audio.r_submix.default \
    	libaudioutils \
    	libaudioroute \
    	libaudio-resampler \
	libmediandk \
	libtinyalsa \
	tinyplay \
	tinycap \
	tinymix \
	tinypcminfo

PRODUCT_PACKAGES += \
	audio_effects.conf \
	libavcodec \
	libavformat \
	libavutil

PRODUCT_PACKAGES += \
	libadioflinger

PRODUCT_PROPERTY_OVERRIDES += \
    	debug.sf.no_hw_vsync=1

###To start stock camera
PRODUCT_PACKAGES += \
	com.huawei.cust

# Bluedroid conf
PRODUCT_PACKAGES += \
    libbt-vendor \
    bt_vendor.conf

# WiFi and Bluetooth
PRODUCT_PACKAGES += \
    	libwpa_client \
	dhcpcd.conf \
	hostapd \
	wpa_supplicant \
	wpa_supplicant.conf

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
    	wifi.supplicant_scan_interval=15

# Camera
PRODUCT_PACKAGES += \
	camera.default \
	camera.hi3635 \
	libcamera_client \
	libcamera_metadata

# Hardware Module
PRODUCT_PACKAGES += \
	fingerprint.default \
	consumerir.default \
	audio.primary.default \
	vibrator.default	

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
	audioril.lib=libhuawei-audio-ril.so \
	telephony.lteOnCdmaDevice=0,0 \
	telephony.lteOnGsmDevice=1,1 \
	ro.telephony.ril_class=HwHisiRIL 

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    	persist.sys.usb.config=mtp,adb \
    	persist.service.adb.enable=1 \
    	persist.service.debuggable=1

# USB OTG support
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.isUsbOtgEnabled=true

