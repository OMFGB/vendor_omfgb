$(call inherit-product, device/motorola/sholes.mk)
$(call inherit-product, vendor/omfgb/products/common.mk)

build-name := OMFGB-Sholes

include vendor/omfgb/products/full-version.mk

PRODUCT_NAME := OMFGB_sholes
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := sholes
PRODUCT_MODEL := Droid
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BUILD_PROP_OVERRIDES := BUILD_ID=FRG83D BUILD_DISPLAY_ID=GRJ22 PRODUCT_NAME=voles TARGET_DEVICE=sholes BUILD_FINGERPRINT=verizon/voles/sholes/sholes:2.2.1/FRG83D/75603:user/release-keys PRODUCT_BRAND=verizon PRIVATE_BUILD_DESC="voles-user 2.2.1 FRG83D 75603 release-keys" BUILD_NUMBER=75603 BUILD_UTC_DATE=1289367602 TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys USER=android-build

PRODUCT_PACKAGES += Torch

PRODUCT_COPY_FILES += \
     vendor/omfgb/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/omfgb/overlay/sholes
