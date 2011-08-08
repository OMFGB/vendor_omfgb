$(call inherit-product, device/htc/mecha/mecha.mk)
$(call inherit-product, vendor/omfgb/products/common.mk)

build-name := OMFGB-Mecha

include vendor/omfgb/products/nightly-version.mk

# Setup device specific product configuration.
PRODUCT_NAME := OMFGB_mecha
PRODUCT_BRAND := verizon_wwe
PRODUCT_DEVICE := mecha
PRODUCT_MODEL := ADR6400L
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=$(build-version) PRODUCT_NAME=htc_mecha BUILD_ID=FRG83D BUILD_FINGERPRINT=verizon_wwe/htc_mecha/mecha/mecha:2.2.1/FRG83D/343953:user/release-keys PRIVATE_BUILD_DESC="1.70.605.0 CL343953 release-keys"

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Add the Stk app
PRODUCT_PACKAGES += Stk

# Add AicBootFix
PRODUCT_PACKAGES += AicBootFix

# Broadcom FM radio
$(call inherit-product, vendor/omfgb/products/bcm_fm_radio.mk)

# Copy inc specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/omfgb/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

# Device specific overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/omfgb/overlay/mecha
