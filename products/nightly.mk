# Pre release overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/omfgb/overlay/nightly

PRODUCT_COPY_FILES +=  \
    vendor/omfgb/prebuilt/nightly/LatinIME.apk:system/app/LatinIME.apk \
    vendor/omfgb/prebuilt/nightly/libjni_latinime.so:system/lib/libjni_latinime.so

