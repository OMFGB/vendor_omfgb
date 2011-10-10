$(call inherit-product, device/lge/p999/p999.mk)

PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=CyanogenMod-KANG \


$(call inherit-product, vendor/omfgb/products/common.mk)

build-name := OMFGB-G2x

include vendor/omfgb/products/nightly-version.mk

# Setup device specific product configuration.
PRODUCT_NAME := OMFGB_p999
PRODUCT_BRAND := lge
PRODUCT_DEVICE := p999
PRODUCT_MODEL := LG-P999
PRODUCT_MANUFACTURER := lge
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_lge_star BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRJ90 BUILD_FINGERPRINT=lge/lge_lge_star/p999:2.3.3/GRI40/lgp999-V21e.41fdc8a2:user/release-keys PRIVATE_BUILD_DESC="lge_star-user 2.3.3 GRI40 41fdc8a2 release-keys"

PRODUCT_PROPERTY_OVERRIDES += ro.product.version=3.26.605.1

# Add the DSP Manager app.
PRODUCT_PACKAGES += DSPManager

# Copy prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/omfgb/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

# Device specific overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/omfgb/overlay/p999
