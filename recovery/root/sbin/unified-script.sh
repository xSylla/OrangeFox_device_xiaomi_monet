#!/system/bin/sh
# This script is needed to automatically set device props.


load_monet()
{
    resetprop "ro.product.model" "Mi 10 lite 5G"
    resetprop "ro.product.name" "monet"
    resetprop "ro.build.product" "monet"
    resetprop "ro.product.device" "monet"
    resetprop "ro.vendor.product.device" "monet"
}

load_vangogh()
{
    resetprop "ro.product.model" "Mi 10 lite Zoom"
    resetprop "ro.product.name" "vangogh"
    resetprop "ro.build.product" "vangogh"
    resetprop "ro.product.device" "vangogh"
    resetprop "ro.vendor.product.device" "vangogh"
}

project=$(getprop ro.boot.hwname)
echo $project

case $project in
    "monet")
        load_monet
        ;;
    "vangogh")
        load_vangogh
        ;;
    *)
        load_monet
        ;;
esac

exit 0
