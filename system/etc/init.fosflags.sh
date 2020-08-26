#!/system/bin/sh
PATH=/sbin:/system/sbin:/system/bin:/system/xbin

FACTORYMODE="/data/system/FACTORYMODE"

# If the adb_factorymode feature is enabled, then framework requires
# notification that adb authentication is temporarily disabled, just
# as when the FOS_FLAGS_ADB_AUTH_DISABLE is set on fos_flags devices.
if [ -f $FACTORYMODE ]; then
  # set a property to signal higher layers that adb auth is temporarily
  # suspended
  setprop amazon.fos_flags.noadbauth 1
fi
