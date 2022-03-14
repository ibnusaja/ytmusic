#!/system/bin/sh
# code by fb.com/ibnue19
# original trick, logic, and material from vanced team

if [[ "$(id -u)" != "0" ]]; then
echo "    this script only work from root user "
exit 1
fi

# cek if app instaled or no
if [[ "$(pm list packages | grep 'com.google.android.apps.youtube.music')" != "package:com.google.android.apps.youtube.music" ]]; then
echo
echo "YT music is not installed, please install first. Install like tutorial in github "
echo "contact : fb.com/ibnue19";echo
exit 1
fi

pathYtmusic=$(pm path com.google.android.apps.youtube.music | awk -F 'package:' '{print $2}')

echo "masukkan path root.apk, yg kamu download"
echo  "input : \c"; read pathVancedMusicDownload 

curl https://raw.githubusercontent.com/ibnusaja/ytmusic/main/data/adb/service.d/music.sh > /data/adb/service.d/music.sh && chmod 755  /data/adb/service.d/music.sh
curl https://raw.githubusercontent.com/ibnusaja/ytmusic/main/data/adb/post-fs-data.d/music.sh > /data/adb/post-fs-data.d/music.sh && chmod 755 /data/adb/post-fs-data.d/music.sh

mkdir /data/adb/Music && cp $pathVancedMusicDownload /data/adb/Music/base.apk && chmod 644 /data/adb/Music/base.apk &&  chown 1000:1000 /data/adb/Music/base.apk
echo"

"
echo " DONE"
echo ".      .      . Please reboot your devices"
