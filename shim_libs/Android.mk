# Copyright (C) 2015 The CyanogenMod Project
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := hw_log.c
LOCAL_MODULE := libhw_log
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES := libicuuc libicui18n
LOCAL_MODULE := libshim_icu
LOCAL_SRC_FILES := icu55.c
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := log.c
LOCAL_MODULE := libshim_log
LOCAL_MULTILIB := both
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := algo.cpp
LOCAL_SHARED_LIBRARIES := libgui
LOCAL_MODULE := libshim_algo
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := hwui.cpp
LOCAL_SHARED_LIBRARIES := libui
LOCAL_MODULE := libshim_hwui
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES += \
    external/libexif \
    frameworks/av

LOCAL_MODULE := libshim
LOCAL_SRC_FILES := shim.cpp
LOCAL_SHARED_LIBRARIES := liblog libexif libmedia libstagefright_foundation
include $(BUILD_SHARED_LIBRARY)

# Camera
include $(CLEAR_VARS)
LOCAL_SRC_FILES:= \
    camera/Camera.cpp \
    camera/CameraMetadata.cpp \
    camera/CaptureResult.cpp \
    camera/CameraParameters2.cpp \
    camera/ICamera.cpp \
    camera/ICameraClient.cpp \
    camera/ICameraService.cpp \
    camera/ICameraServiceListener.cpp \
    camera/ICameraServiceProxy.cpp \
    camera/ICameraRecordingProxy.cpp \
    camera/ICameraRecordingProxyListener.cpp \
    camera/camera2/ICameraDeviceUser.cpp \
    camera/camera2/ICameraDeviceCallbacks.cpp \
    camera/camera2/CaptureRequest.cpp \
    camera/camera2/OutputConfiguration.cpp \
    camera/CameraBase.cpp \
    camera/CameraUtils.cpp \
    camera/VendorTagDescriptor.cpp \
    camera/CameraParameters.cpp \
    ui/GraphicBufferAllocator.cpp \
    ui/GraphicBuffer.cpp \
    ui/GraphicBufferMapper.cpp \
    huawei.c 

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libutils \
    liblog \
    libbinder \
    libhardware \
    libui \
    libgui \
    libsync \
    libcamera_metadata

LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/camera/include \
    system/media/camera/include \
    system/media/private/camera/include

LOCAL_MODULE := libshim_camera
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)