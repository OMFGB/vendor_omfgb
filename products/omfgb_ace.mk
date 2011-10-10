$(call inherit-product, device/htc/ace/ace.mk)
$(call inherit-product, vendor/omfgb/products/common.mk)
$(call inherit-product, vendor/omfgb/products/gsm.mk)

build-name := OMFGB-Ace

include vendor/omfgb/products/nightly-version.mk

# Setup device specific product configuration.
PRODUCT_NAME := OMFGB_ace
PRODUCT_BRAND := htc_wwe
PRODUCT_DEVICE := ace
PRODUCT_MODEL := Desire HD
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=$(build-version) PRODUCT_NAME=htc_ace BUILD_ID=FRG83D BUILD_FINGERPRINT=htc_wwe/htc_ace/ace:2.3.3/GRI40/87995:user/release-keys PRIVATE_BUILD_DESC="2.50.405.2 CL87995 release-keys"

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Add the DSP Manager app.
PRODUCT_PACKAGES += DSPManager

# Add the Stk app
PRODUCT_PACKAGES += Stk

# Broadcom FM radio
$(call inherit-product, vendor/omfgb/products/bcm_fm_radio.mk)

# Copy inc specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/omfgb/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

# Device specific overlay
PRODUCT_PACKAGE_OVERLAYS += device/htc/ace/overlay
