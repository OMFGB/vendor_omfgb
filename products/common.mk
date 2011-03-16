# Generic OMGB product
PRODUCT_NAME := OMGB
PRODUCT_BRAND := OMGB
PRODUCT_DEVICE := generic

include vendor/omgb/products/version.mk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=DonMessWivIt.ogg


# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

# Enable Windows Media if supported by the board
WITH_WINDOWS_MEDIA:=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.build.romversion=OMGB \
    ro.rommanager.developerid=r2d2 \
    ro.modversion=$(product-version)

# OMGB specific product packages
PRODUCT_PACKAGES += \

# Extra tools in OMGB
PRODUCT_PACKAGES += \



# Common OMGB overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/omgb/overlay/common

PRODUCT_COPY_FILES += \
    vendor/omgb/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/omgb/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/omgb/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/omgb/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/omgb/prebuilt/common/etc/profile:system/etc/profile \
    vendor/omgb/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/omgb/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/omgb/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/omgb/prebuilt/common/etc/init.d/04modules:system/etc/init.d/04modules \
    vendor/omgb/prebuilt/common/etc/init.d/20userinit:system/etc/init.d/20userinit \
    vendor/omgb/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/omgb/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/omgb/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/omgb/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/omgb/prebuilt/common/xbin/htop:system/xbin/htop \
    vendor/omgb/prebuilt/common/xbin/irssi:system/xbin/irssi \
    vendor/omgb/prebuilt/common/xbin/powertop:system/xbin/powertop \
    vendor/omgb/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

