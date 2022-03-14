#!/system/bin/sh
while read line; do echo ${line} | grep com.google.android.apps.youtube.music | awk '{print $2}' | xargs umount -l; done< /proc/mounts
