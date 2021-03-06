#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Start Tmux by default
# If not running interactively, do not do anything
if command -v tmux>/dev/null; then
[[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi


# Powerline
if [ -f `which powerline-daemon` ]; then
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh
fi

if [ -f /usr/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh ]; then
    source /usr/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh
fi

# >>>>BEGIN ADDED BY CNCHI INSTALLER<<<< #
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano
# >>>>>END ADDED BY CNCHI INSTALLER<<<<< #

