# Google Nexus 7 Revival

This repository contains notes about trying to revive and repurpose an ancient [Google Nexus 7](<https://en.wikipedia.org/wiki/Nexus_7_(2013)>) Android tablet. Furthermore, this platform allows to deep dive into Android ecosystem without fear of bricking expensive device.

## Notes

```bash
# install Termux

adb push ./termux.bashrc /data/data/com.termux/files/home/.bashrc
# or
make bashrc

adb shell

# list mounts
mount

# get termux context
su -l root -s /data/data/com.termux/files/usr/bin/bash

TERMUX_USER=$(ls -ld /data/data/com.termux/files | cut -d" " -f 3);
su -l $TERMUX_USER -s /data/data/com.termux/files/usr/bin/bash

source /data/data/com.termux/files/home/.bashrc

# does not work because of missing user groups (inet, everybody, .._cache)
pkg update

# start webpage from shell
adb shell am start -a android.intent.action.VIEW -d http://www.stackoverflow.com
```

## References

- [Nexus 7 Development Forum](https://forum.xda-developers.com/c/nexus-7.1673/)
- [[ROM] [deb | flo] [8.1.0] AOSP Extended - V5.2 [UNOFFICIAL] [ElementalX kernel]](https://forum.xda-developers.com/t/rom-deb-flo-8-1-0-aosp-extended-v5-2-unofficial-elementalx-kernel.3747245/)
- [Adb useful commands list](https://gist.github.com/Pulimet/5013acf2cd5b28e55036c82c91bd56d8)
- [Most Complete ADB Cheat Sheet](https://www.automatetheplanet.com/adb-cheat-sheet/)
- [Android Activity Manager (am) Cheat Sheet](https://cheatography.com/citguy/cheat-sheets/android-activity-manager-am/)
- [topjohnwu/Magisk](https://github.com/topjohnwu/Magisk)
- [termux/termux-app](https://github.com/termux/termux-app#github)
- [F-Droid](https://f-droid.org/en/)
- [BusyBox](https://github.com/meefik/busybox)
- [Docker on Android](https://gist.github.com/FreddieOliveira/efe850df7ff3951cb62d74bd770dce27)
- [RezaSR/ChrootDebianOnAndroid](https://github.com/RezaSR/ChrootDebianOnAndroid)
- [ericcurtin/limux](https://github.com/ericcurtin/limux)
- [ChrootOnAndroid](https://wiki.debian.org/ChrootOnAndroid#Debian_install_apps_on_Android)
- [PRoot](https://wiki.termux.com/wiki/PRoot)
- [How is it possible to show an image in a full screen on android?](https://stackoverflow.com/questions/27713726/how-is-it-possible-to-show-an-image-in-a-full-screen-on-android)
- [How to turn your Android application into a kiosk](https://snow.dog/blog/kiosk-mode-android)
- [How to use crontab in Android?](https://stackoverflow.com/questions/16747880/how-to-use-crontab-in-android)
- [CronTab for Android: Run task scheduler on your android phone](https://forum.xda-developers.com/t/crontab-for-android-run-task-scheduler-on-your-android-phone.2700146/)
- [Android flashable zip](https://github.com/Alhyoss/android-flashable-zip)
