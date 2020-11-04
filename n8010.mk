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
#

$(call inherit-product, device/samsung/n80xx-common/n80xx-common.mk)

LOCAL_PATH := device/samsung/n8013

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Rootdir
PRODUCT_COPY_FILES += \
    device/samsung/n8013/rootdir/init.target.rc:root/init.target.rc

$(call inherit-product-if-exists, vendor/samsung/n8013/n8013-vendor.mk)
