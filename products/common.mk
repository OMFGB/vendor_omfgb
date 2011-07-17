
# Generic OMFGB product
PRODUCT_NAME := OMFGB
PRODUCT_BRAND := OMFGB
PRODUCT_DEVICE := generic

include vendor/tmobile/products/themes/themes-base.mk
include frameworks/base/data/sounds/AllAudio.mk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=DonMessWivIt.ogg


# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

# Enable Windows Media if supported by the board
WITH_WINDOWS_MEDIA:=true

PRODUCT_PACKAGES += \
    CMScreenshot \
    DSPManager \
    God_Mode \
    libcyanogen-dsp \
    screenshot \
    Wallpapers

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.build.romversion=OMFGB \
    ro.rommanager.developerid=r2d2 \
    ro.modversion=$(product-version) \
    ro.stats.devname=T3hh4xx0r \
    ro.stats.romname=OMFGB \
    ro.stats.romversion=$(product-version)

# Common OMGB overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/omfgb/overlay/common

PRODUCT_COPY_FILES += \
    vendor/omfgb/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/omfgb/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/omfgb/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/omfgb/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/omfgb/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/omfgb/prebuilt/common/etc/profile:system/etc/profile \
    vendor/omfgb/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/omfgb/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/omfgb/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/omfgb/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/omfgb/prebuilt/common/etc/init.d/04modules:system/etc/init.d/04modules \
    vendor/omfgb/prebuilt/common/etc/init.d/20userinit:system/etc/init.d/20userinit \
    vendor/omfgb/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/omfgb/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/omfgb/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/omfgb/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/omfgb/prebuilt/common/xbin/htop:system/xbin/htop \
    vendor/omfgb/prebuilt/common/xbin/irssi:system/xbin/irssi \
    vendor/omfgb/prebuilt/common/xbin/powertop:system/xbin/powertop \
    vendor/omfgb/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh \
    vendor/omfgb/prebuilt/common/system/app/RomStats.apk:system/app/RomStats.apk

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

