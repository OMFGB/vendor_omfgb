$(call inherit-product, device/htc/vivow/vivow.mk)
$(call inherit-product, vendor/omfgb/products/common.mk)

build-name := OMFGB-Vivow

include vendor/omfgb/products/full-version.mk
# Setup device specific product configuration.
PRODUCT_NAME := OMFGB_vivow
PRODUCT_BRAND := htc
PRODUCT_DEVICE := vivow
PRODUCT_MODEL := Incredible 2
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=$(build-version) PRODUCT_NAME=htc_vivow BUILD_ID=GRJ22 BUILD_FINGERPRINT=htc_wwe/htc_vivow/vivow:2.3.3/GRI40/47853:user/release-keys PRIVATE_BUILD_DESC="2.36.405.8 CL47853 release-keys"

# Add the vivow specific product packages
PRODUCT_PACKAGES += \
	Stk \
	Torch \
	AicBootFix

# Broadcom FM radio
$(call inherit-product, vendor/omfgb/products/bcm_fm_radio.mk)

# Copy inc specific prebuilt files
PRODUCT_COPY_FILES +=  \

# Device specific overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/omfgb/overlay/vivow

