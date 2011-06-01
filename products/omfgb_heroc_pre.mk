$(call inherit-product, device/htc/heroc/heroc.mk)
$(call inherit-product, vendor/omfgb/products/common.mk)
$(call inherit-product, vendor/omfgb/products/pre-release.mk)

build-name := OMFGB-Heroc
include vendor/omfgb/products/version.mk
# Setup device specific product configuration.
PRODUCT_NAME := OMFGB_heroc_pre
PRODUCT_BRAND := htc
PRODUCT_DEVICE := heroc
PRODUCT_MODEL := HERO200
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=$(build-version) BUILD_FINGERPRINT=google/passion/passion:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

PRODUCT_PROPERTY_OVERRIDES += ro.product.version=3.26.605.1

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/omfgb/prelink-linux-arm-heroc.map

# Copy hero specific prebuilt files
PRODUCT_COPY_FILES +=  \
#    vendor/omfgb/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip

# Device specific overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/omfgb/overlay/heroc

# Pre-release specific overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/omfgb/overlay/pre-release
