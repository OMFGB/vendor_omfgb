# This makefile is called by switching to full-version mode by running
# . vendor/switch.sh

# Stable release version
build-version := 1.3.1

# Will output OMFGB_<device>-<version-number>
product-version := $(build-name)-$(build-version) 
