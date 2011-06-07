#!/bin/sh

find ./vendor/omfgb/products/omfgb_* -type f -exec sed -i 's/full.mk/nightly.mk/g' {} \;

