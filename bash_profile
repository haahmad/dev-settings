#basic preferences
export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad
export PATH=/opt/local/bin:/opt/local/sbin/:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

#blackberry native developer kit
export BBNDK=/Applications/bbndk
source $BBNDK/bbndk-env.sh

# Set git autocompletion and PS1 integration
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
    . /usr/local/git/contrib/completion/git-completion.bash
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
alias gct='git commit'
alias grv='git remote -v'
alias gdf='git diff --color'
alias glg='git log --decorate --graph'
alias gft='git fetch'
alias gcp='git cherry-pick'

#Automatically run ls after cd
function cd()
{
     /opt/local/bin/clear && builtin cd "$*" && ls
}

#Automatically run ls after clear
function clear()
{
     /opt/local/bin/clear && ls
}
