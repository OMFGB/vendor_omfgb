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
echo "  1 - Switch to setup specific to pre-release builds"
echo "  2 - Revert back to a normal release build"
echo 
echo
echo -n "Enter option: "
read opt

case $opt in
1) ./vendor/omfgb/build/pre-build.sh;;
2) ./vendor/omfgb/build/revert-build.sh;;
esac

clear

. build/envsetup.sh
lunch
