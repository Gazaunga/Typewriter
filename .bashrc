#!/bin/bash

source .profile
source .bash_profile
source .bash_prompt

# Ignore duplicate commands, & ignore commands starting with a space.
export HISTCONTROL=erasedups:ignorespace
# Keep the last 1000 entries.
export HISTSIZE=1000
# Append to the history instead of overwriting (good for multiple connections).
shopt -s histappend

