#!/bin/sh

find ./vendor/omfgb/products/ -type f -exec sed -i 's/full-version/nightly-version/g' {} \;

