#!/bin/bash

source .profile
source .bash_profile
source .bash_prompt
xrdb -load ~/.Xresources

# Ignore duplicate commands, & ignore commands starting with a space.
export HISTCONTROL=erasedups:ignorespace
# Keep the last 1000 entries.
export HISTSIZE=1000
# Append to the history instead of overwriting (good for multiple connections).
shopt -s histappend

# Less colors
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS='-R '
#export LESS=-R
#export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
#export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
#export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
#export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
#export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
#export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
#export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

case "$TERM" in
    xterm*)
        TERMLIST=(
            xterm-256color
            xterm-16color
            xterm-color
            xterm
            ) ;;
    screen*)
        TERMLIST=(
            screen-256color-bce
            screen-256color
            screen-16color-bce
            screen-16color
            screen
            ) ;;
    *)
        TERMLIST="$TERM" ;;
esac
for term in $TERMLIST; do
    infocmp "$term" >/dev/null 2>&1 &&
        export TERM=$term &&
        break
done

# Launch Screen with new invocation of Bash
#[[ $TERM != "screen" ]] && exec screen -q
