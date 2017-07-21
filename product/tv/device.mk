# Copyright (c) 2017, NVIDIA CORPORATION.  All rights reserved.

# Common stuff for tv products

PRODUCT_LOCALES := en_US

$(call inherit-product, device/google/atv/products/atv_base.mk)

# Include drawables for various densities.
PRODUCT_AAPT_CONFIG := normal large xlarge tvdpi hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_PROPERTY_OVERRIDES += \
ro.com.google.clientidbase=android-nvidia \
ro.setupwizard.mode=OPTIONAL

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_CHARACTERISTICS := tv

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/../../common/overlay-common/$(PLATFORM_VERSION_LETTER_CODE)
DEVICE_PACKAGE_OVERLAYS := device/nvidia/platform/t210/overlay
