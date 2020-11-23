# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH:$HOME/.local/bin/"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH:$HOME/bin/"
fi

export ANDROID_HOME="/home/friddle/Android/Sdk"
export FLUTTER_HOME="/home/friddle/Opt/flutter/flutter"
if [ -f "$HOME/sdkman/bin/sdkman-init.sh" ] ; then
    . "$HOME/.sdkman/bin/sdkman-init.sh"
fi
export JAVA_HOME="$HOME/.sdkman/candidates/java/current/"
export NODE_HOME="/home/friddle/Opt/node11/"
export GOPATH="/home/friddle/Opt/go/"
export GOROOT="/usr/lib/go/"
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export WINEPREFIX=/home/friddle/.deepinwine/Wine-All/
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

. $HOME/.sdkman/bin/sdkman-init.sh

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/snap/bin/:$PATH"
export PATH="$PATH:$HOME/.pub-cache/bin"
export PATH="$PATH:$HOME/Opt/flutter/flutter/bin/cache/dart-sdk/bin/"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/Project/fuchsia/.jiri_root/bin"
export PATH="$PATH:$HOME/.local/bin/"
export PATH="$HOME/.cargo/bin:$PATH:$FLUTTER_HOME/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/current"
export PATH="$PATH:$NODE_HOME/bin"
export PATH="$PATH:$GOPATH/bin/"
export PATH="$PATH:$JAVA_HOME/bin"
export PATH="$PATH:$HOME/go/bin"
export QT_IM_MODULE=fcitx

export LANG=en_US.UTF-8
export LANGUAGE=en_US

export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN
