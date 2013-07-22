#basic preferences
export CLICOLOR=1

#Prompt and prompt colors
# 30m - Black
# 31m - Red
# 32m - Green
# 33m - Yellow
# 34m - Blue
# 35m - Purple
# 36m - Cyan
# 37m - White
# 0 - Normal
# 1 - Bold
function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
export PS1="$BLACKBOLD[\t]$GREENBOLD \u@\h\[\033[00m\]:$BLUEBOLD\w\[\033[00m\]\n$ "
}
prompt

# git config --global color.status auto
# git config --global color.diff auto
# git config --global color.interactive auto
# git config --global color.branch auto

#blackberry native developer kit
export BBNDK_INSTALLDIR=/Applications/Momentics.app
source $BBNDK_INSTALLDIR/bbndk-env_127_0_1_5708.sh

export PATH=/usr/local/bin:$PATH
export platform=macosx

export RICHMOND_ROOT=$HOME/dev
export QCONF_OVERRIDE=$RICHMOND_ROOT/qconf-override.mk

#WebKit Tools and Scripts
export PATH=$PATH:$RICHMOND_ROOT/webkit/Tools/Scripts:$RICHMOND_ROOT/platform/tools/pb:$RICHMOND_ROOT/browser/build-node/bin

export BINDING_CMAKE_ARGS="-DQT_QMAKE_EXECUTABLE=/usr/local/bin/qmake"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

#useful aliases
alias la='ls -la'
alias l1='ls -1'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

#git aliases
alias gbr='git branch -v'
alias gst='git status'
alias gco='git checkout'
alias gct='git commit'
alias grv='git remote -v'
alias gdf='git diff --color'
alias glg='git log --decorate --graph'
alias gft='git fetch'
alias gcp='git cherry-pick'

#Automatically run ls after cd
function cd()
{
     /usr/bin/clear && builtin cd "$*" && ls -a
}

#Automatically run ls after clear
function clear()
{
     /usr/bin/clear && ls -a
}
