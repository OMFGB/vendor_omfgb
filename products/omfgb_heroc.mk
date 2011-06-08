$(call inherit-product, device/htc/heroc/heroc.mk)
$(call inherit-product, vendor/omfgb/products/common.mk)

build-name := OMFGB-Heroc

include vendor/omfgb/products/full-version.mk

# Setup device specific product configuration.
PRODUCT_NAME := OMFGB_heroc
PRODUCT_BRAND := htc
PRODUCT_DEVICE := heroc
PRODUCT_MODEL := Hero
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=$(build-version) BUILD_FINGERPRINT=google/passion/passion:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

PRODUCT_PROPERTY_OVERRIDES += ro.product.version=3.26.605.1

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/omfgb/prelink-linux-arm-heroc.map

# Copy hero specific prebuilt files
PRODUCT_COPY_FILES +=  \
#    vendor/omfgb/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
