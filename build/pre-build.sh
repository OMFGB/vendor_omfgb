#!/bin/sh

(cat << EOF) > ./vendor/omfgb/vendorsetup.sh
add_lunch_combo OMFGB_desirec_pre-eng
add_lunch_combo OMFGB_heroc_pre-eng
add_lunch_combo OMFGB_inc_pre-eng
add_lunch_combo OMFGB_supersonic_pre-eng
EOF

