$(call inherit-product, device/samsung/vibrantmtd/vibrantmtd.mk)
$(call inherit-product, vendor/omfgb/products/common.mk)

build-name := OMFGB-Vibrant

include vendor/omfgb/products/nightly-version.mk

# Setup device specific product configuration.
PRODUCT_NAME := OMFGB_vibrantmtd
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := vibrantmtd
PRODUCT_MODEL := SGH-T959
PRODUCT_MANUFACTURER := SAMSUNG
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=$(build-version) PRODUCT_NAME=vibrant BUILD_FINGERPRINT=google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys" TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys PRODUCT_MODEL=SGH-T959 PRODUCT_MANUFACTURER=SAMSUNG

PRODUCT_PROPERTY_OVERRIDES += ro.product.version=3.26.605.1

# Add the DSP Manager app.
PRODUCT_PACKAGES += DSPManager

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Extra RIL settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2
    
# Add additional mounts
PRODUCT_PROPERTY_OVERRIDES += \
    ro.additionalmounts=/mnt/emmc \
    ro.vold.switchablepair=/mnt/sdcard,/mnt/emmc

# Copy fascinate specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/omfgb/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

# Device specific overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/omfgb/overlay/vibrantmtd
