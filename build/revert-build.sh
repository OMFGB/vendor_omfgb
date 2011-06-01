#!/bin/sh

(cat << EOF) > ./vendor/omfgb/vendorsetup.sh
add_lunch_combo OMFGB_desirec-eng
add_lunch_combo OMFGB_heroc-eng
add_lunch_combo OMFGB_inc-eng
add_lunch_combo OMFGB_supersonic-eng
add_lunch_combo OMFGB_inc_themed-eng
EOF

