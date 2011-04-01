$(call inherit-product, device/htc/supersonic/supersonic.mk)
$(call inherit-product, vendor/omfgb/products/common.mk)

build-name := OMFGB-Supersonic

# Setup device specific product configuration.
PRODUCT_NAME := OMFGB_supersonic
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := supersonic
PRODUCT_MODEL := Evo
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=$(build-version) PRODUCT_NAME=htc_supersonic BUILD_FINGERPRINT=sprint/htc_supersonic/supersonic/supersonic:2.2/FRF91/294884:user/release-keys PRIVATE_BUILD_DESC=$(product-version)

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Copy supersonic specific prebuilt files
PRODUCT_COPY_FILES +=  \
   vendor/omfgb/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

# Device specific overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/omfgb/overlay/supersonic
