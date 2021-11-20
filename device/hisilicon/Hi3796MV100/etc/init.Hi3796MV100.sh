#!/system/bin/sh
date -s 20140101
QBENABLE=`getprop persist.sys.qb.enable`
case $QBENABLE in
 true)
  ;;
 *)
  setprop sys.insmod.ko 1
  ;;
 esac

#DVFS
echo 400000 > /sys/module/mali/parameters/mali_dvfs_max_freqency

echo "\n\nWelcome to HiAndroid\n\n" > /dev/kmsg
LOW_RAM=`getprop ro.config.low_ram`
case $LOW_RAM in
 true)
  echo "\n\nenter low_ram mode\n\n" > /dev/kmsg
  echo 104857600 > /sys/block/zram0/disksize
  mkswap /dev/block/zram0
  swapon /dev/block/zram0
  ;;
 *)
  ;;
 esac

# Forced standby restart function
SUSPEND_RESTAR=`getprop persist.suspend.mode`
case $SUSPEND_RESTAR in
 deep_restart)
  sleep 3;
  echo 0x1 0x1 > /proc/msp/pm
  ;;
 *)
  ;;
 esac
