. $HOME/Games/wine/winebashrc
. /etc/profile.d/autojump.zsh

#------------------------------
# History stuff
#------------------------------
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/glakke/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#------------------------------
# Variables
#------------------------------
PATH=$HOME/bin:$HOME/Dropbox/linux/script:/tools:/opt/android-sdk:/usr/bin/vendor_perl:/opt/kde/bin:${PATH}

export TERM=xterm-256color
export EDITOR='emacs -nw'
export BROWSER=/usr/bin/chromium
export ANDROID_HOME=/opt/android-sdk
export ANDROID_NDK_ROOT=/opt/android-ndk
export ANDROID_NDK_HOME=/opt/android-ndk
export _JAVA_AWT_WM_NONREPARENTING=1
export JAVA_FONTS=/usr/share/fonts/TTF
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.aatext=true'

#------------------------------
# Alias stuff
#------------------------------
alias ls='ls --color=auto -h'
alias ntop='nethogs'
alias top='htop'
alias twat='mkdir wat && cd wat'
alias em='emacs -nw'
# SSH
alias evalssh='eval `keychain --agents ssh --eval id_rsa` || exit 1'
alias lthssh='ssh dat11aek@login.student.lth.se'
alias lthsshfs='sshfs dat11aek@login.student.lth.se: /media/ssh/lth'
alias android-connect="mtpfs -o allow_other /media/android"
alias android-disconnect="fusermount -u /media/android"
alias sbt-kill='ps -ef | grep java | grep "'".sbt/boot"'" | awk "'"{print $2}"'" | xargs kill || echo "NOTHING TO KILL!"'

#------------------------------
# Functions
#------------------------------
function sysd {
	sudo systemctl $1 $2.service
}

#------------------------------
# Source
#------------------------------
. ~/Games/wine/winebashrc
