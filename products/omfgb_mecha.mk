$(call inherit-product, device/htc/mecha/mecha.mk)
$(call inherit-product, vendor/omfgb/products/common.mk)

build-name := OMFGB-Mecha

include vendor/omfgb/products/version.mk
# Setup device specific product configuration.
PRODUCT_NAME := OMFGB_mecha
PRODUCT_BRAND := htc
PRODUCT_DEVICE := mecha
PRODUCT_MODEL := Thunderbolt
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=$(build-version) PRODUCT_NAME=mecha BUILD_FINGERPRINT=verizon_wwe/htc_mecha/mecha/mecha:2.2.1/FRG83D/338893:user/release-keys PRODUCT_BRAND=verizon_wwe TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys PRIVATE_BUILD_DESC="1.12.605.6 CL338893 release-keys" PRODUCT_MODEL=Thunderbolt PRODUCT_MANUFACTURER=HTC

PRODUCT_PROPERTY_OVERRIDES += ro.product.version=1.12.605.6

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Broadcom FM radio
$(call inherit-product, vendor/omfgb/products/bcm_fm_radio.mk)

# Copy inc specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/omfgb/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

# Device specific overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/omfgb/overlay/mecha
