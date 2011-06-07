#!/bin/sh

clear
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo "  1 - Switch to setup specific to nightly builds"
echo "  2 - Revert back to a full release build"
echo 
echo
echo -n "Enter option: "
read opt

case $opt in
1) ./vendor/omfgb/build/nightly.sh;;
2) ./vendor/omfgb/build/full.sh;;
esac

clear

. build/envsetup.sh
lunch
