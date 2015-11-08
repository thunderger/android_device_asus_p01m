# Release name
PRODUCT_RELEASE_NAME := p01ma

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/asus/p01ma/device_p01ma.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p01ma
PRODUCT_NAME := cm_p01ma
PRODUCT_BRAND := asus
PRODUCT_MODEL := p01ma
PRODUCT_MANUFACTURER := asus
