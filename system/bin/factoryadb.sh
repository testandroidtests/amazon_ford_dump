#!/system/bin/sh

if [ -f /data/system/FACTORYMODE ]; then
    val=`/system/bin/getprop persist.sys.usb.config`
    hasadb=`echo $val | grep -c adb`
    if [ $hasadb -ne 1 ]; then
        if [ "$val" = "none" ]; then
            setprop persist.sys.usb.config adb
        else
            setprop persist.sys.usb.config "${val},adb"
        fi
    fi
fi
