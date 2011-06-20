$(call inherit-product, vendor/omfgb/products/nightly.mk)

build-version := 1.3.0_nightly-$(shell date +%m-%d)
product-version := $(build-name)-$(build-version)
