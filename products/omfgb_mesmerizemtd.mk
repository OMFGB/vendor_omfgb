$(call inherit-product, device/samsung/mesmerizemtd/mesmerizemtd.mk)
$(call inherit-product, vendor/omfgb/products/common.mk)

build-name := OMFGB-Mesmerize

include vendor/omfgb/products/nightly-version.mk

# Setup device specific product configuration.
PRODUCT_NAME := OMFGB_mesmerizemtd
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := mesmerizemtd
PRODUCT_MODEL := SCH-I500
PRODUCT_MANUFACTURER := SAMSUNG
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=$(build-version) PRODUCT_NAME=mesmerize BUILD_FINGERPRINT=ro.build.fingerprint=uscc/SCH-I500/SCH-I500/SCH-I500:2.2.1/FROYO/EE19:user/release-keys PRODUCT_BRAND=uscc TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys PRIVATE_BUILD_DESC="3.26.605.1 CL264707 release-keys" PRODUCT_MODEL=SCH-I500 PRODUCT_MANUFACTURER=SAMSUNG

PRODUCT_PROPERTY_OVERRIDES += ro.product.version=3.26.605.1

# Copy fascinate specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/omfgb/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

# Device specific overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/omfgb/overlay/mesmerizemtd
