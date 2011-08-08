$(call inherit-product, vendor/omfgb/products/nightly.mk)

# Stable version base, plus shell date
build-version := 1.3.1_nightly-$(shell date +%m-%d)

# Will output OMFGB_<device>-<version-number>
product-version := $(build-name)-$(build-version)
