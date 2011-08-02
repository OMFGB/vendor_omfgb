$(call inherit-product, device/motorola/shadow/shadow.mk)
$(call inherit-product, vendor/omfgb/products/common.mk)

build-name := OMFGB-Shadow

include vendor/omfgb/products/nightly-version.mk

PRODUCT_NAME := OMFGB_shadow
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := shadow
PRODUCT_MODEL := DROIDXX
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BUILD_PROP_OVERRIDES := BUILD_ID=FRG83D BUILD_DISPLAY_ID=GRJ22 PRODUCT_NAME=shadow_vzw TARGET_DEVICE=cdma_shadow BUILD_FINGERPRINT=verizon/shadow_vzw/cdma_shadow/shadow:2.2.1/VZW/23.340:user/ota-rel-keys,release-keys PRODUCT_BRAND=verizon PRIVATE_BUILD_DESC="cdma_shadow-user 2.2.1 VZW 2.3.340 ota-rel-keys,release-keys" BUILD_NUMBER=2.3.340 BUILD_UTC_DATE=1289194863 TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys

PRODUCT_COPY_FILES += \
	vendor/omfgb/prebuilt/shadow/system/lib/libbridge.so:system/lib/libbridge.so \
	vendor/omfgb/prebuilt/shadow/system/lib/libLCML.so:system/lib/libLCML.so \
	vendor/omfgb/prebuilt/shadow/system/lib/libstagefright.so:system/lib/libstagefright.so \
	vendor/omfgb/prebuilt/shadow/system/app/LatinIME.apk:system/app/LatinIME.apk \
	vendor/omfgb/prebuilt/shadow/system/app/Torch.apk:system/app/Torch.apk \
	vendor/omfgb/prebuilt/shadow/system/etc/init.d/25torchfix:system/etc/init.d/25torchfix 
    

PRODUCT_COPY_FILES +=  \
    vendor/omfgb/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/omfgb/overlay/shadow
