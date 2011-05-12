#!/system/bin/sh
DEST=/system/xbin/su

mount -o remount,rw /system /system

# copy files
cat /vendor/files/su-2.3.6.1-ef > $DEST
cat /vendor/files/Superuser.apk > /system/app/Superuser.apk

# set su permissions
chmod 06755 $DEST
chown 0 0 $DEST

mount -o remount,ro /system /system
