# BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-320x480

# Inherit device configuration for Gio
$(call inherit-product, device/samsung/gio/full_gio.mk)

# Inherit some common aokp stuff.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Include GSM stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := GalaxyGio
PRODUCT_VERSION_DEVICE_SPECIFIC := -GT-S5660

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gio
PRODUCT_NAME := aokp_gio
