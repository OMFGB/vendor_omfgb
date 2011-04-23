$(call inherit-product, device/htc/desirec/desirec.mk)
$(call inherit-product, vendor/omfgb/products/common.mk)

build-name := OMFGB-Desirec

# Setup device specific product configuration.
PRODUCT_NAME := OMFGB_desirec
PRODUCT_BRAND := htc
PRODUCT_DEVICE := desirec
PRODUCT_MODEL := Eris
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=$(build-version) PRODUCT_NAME=desirec BUILD_FINGERPRINT=verizon_wwe/desirec/desirec/desirec:2.2/FRF91/264707:user/release-keys PRODUCT_BRAND=verizon_wwe TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys PRIVATE_BUILD_DESC="3.26.605.1 CL264707 release-keys" PRODUCT_MODEL=Eris PRODUCT_MANUFACTURER=HTC

PRODUCT_PROPERTY_OVERRIDES += ro.product.version=3.26.605.1

# Copy eris specific prebuilt files
PRODUCT_COPY_FILES +=  \
#    vendor/omfgb/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip

# Device specific overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/omfgb/overlay/desirec
