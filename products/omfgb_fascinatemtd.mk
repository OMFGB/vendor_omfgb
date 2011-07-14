$(call inherit-product, device/samsung/fascinatemtd/fascinatemtd.mk)
$(call inherit-product, vendor/omfgb/products/common.mk)

build-name := OMFGB-Fascinate

include vendor/omfgb/products/full-version.mk

# Setup device specific product configuration.
PRODUCT_NAME := OMFGB_fascinatemtd
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := fascinatemtd
PRODUCT_MODEL := SCH-I500
PRODUCT_MANUFACTURER := SAMSUNG
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=$(build-version) PRODUCT_NAME=fascinate BUILD_FINGERPRINT=ro.build.fingerprint=verizon/SCH-I500/SCH-I500/SCH-I500:2.2.1/FROYO/EB01:user/release-keys PRODUCT_BRAND=verizon_wwe TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys PRIVATE_BUILD_DESC="3.26.605.1 CL264707 release-keys" PRODUCT_MODEL=SCH-I500 PRODUCT_MANUFACTURER=SAMSUNG

PRODUCT_PROPERTY_OVERRIDES += ro.product.version=3.26.605.1

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Copy fascinate specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/omfgb/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

# Device specific overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/omfgb/overlay/fascinatemtd
