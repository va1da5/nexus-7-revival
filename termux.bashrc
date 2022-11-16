_=/data/data/com.termux/files/usr/bin/env
SHLVL=1
SHELL=/data/data/com.termux/files/usr/bin/bash
PATH=/data/data/com.termux/files/usr/bin:/sbin:/system/sbin:/system/bin:/system/xbin:/vendor/bin:/vendor/xbin
TERMUX_APP_PID=8997
COLORTERM=truecolor
TERM=xterm-256color
PREFIX=/data/data/com.termux/files/usr
TERMUX_IS_DEBUGGABLE_BUILD=1
TERMUX_VERSION=0.118.0
EXTERNAL_STORAGE=/sdcard
LD_PRELOAD=/data/data/com.termux/files/usr/lib/libtermux-exec.so
HOME=/data/data/com.termux/files/home
LANG=en_US.UTF-8
TERMUX_APK_RELEASE=GITHUB
TMPDIR=/data/data/com.termux/files/usr/tmp
ANDROID_DATA=/data
ANDROID_ROOT=/system

BOOTCLASSPATH=/system/framework/org.dirtyunicorns.utils.jar:/system/framework/core-oj.jar:/system/framework/core-libart.jar:/system/framework/conscrypt.jar:/system/framework/okhttp.jar:/system/framework/bouncycastle.jar:/system/framework/apache-xml.jar:/system/framework/legacy-test.jar:/system/framework/ext.jar:/system/framework/framework.jar:/system/framework/telephony-common.jar:/system/framework/voip-common.jar:/system/framework/ims-common.jar:/system/framework/org.apache.http.legacy.boot.jar:/system/framework/android.hidl.base-V1.0-java.jar:/system/framework/android.hidl.manager-V1.0-java.jar

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -lha'
alias lt='ls -lt'
alias lu='du -sh * | sort -h'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

function cd() {
    builtin cd "$@" && ls -lh
}

