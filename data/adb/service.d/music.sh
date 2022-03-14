#!/system/bin/sh
while [ "$(getprop sys.boot_completed | tr -d '\r')" != "1" ]; do sleep 1; done
sleep 1
chcon u:object_r:apk_data_file:s0 /data/adb/Music/base.apk
pathYtmusic=$(pm path com.google.android.apps.youtube.music | awk -F 'package:' '{print $2}') && sleep 1
mount -o bind /data/adb/Music/base.apk $pathYtmusic
