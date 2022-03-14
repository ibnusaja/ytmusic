#!/system/bin/sh
while [ "$(getprop sys.boot_completed | tr -d '\r')" != "1" ]; do sleep 1; done
sleep 1
chcon u:object_r:apk_data_file:s0 /data/adb/Music/base.apk
mount -o bind /data/adb/Music/base.apk /data/app/com.google.android.apps.youtube.music-lCSsddLGy5mCNrXjoRJmlg==/base.apk