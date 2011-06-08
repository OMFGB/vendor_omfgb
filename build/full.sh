#!/bin/sh

find ./vendor/omfgb/products/ -type f -exec sed -i 's/nightly-version/full-version/g' {} \;

