#!/bin/sh

find ./vendor/omfgb/products/omfgb_* -type f -exec sed -i 's/nightly.mk/full.mk/g' {} \;

