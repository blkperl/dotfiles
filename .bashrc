
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# color yellow time color lightblue user@host : path (git branch) end color
P_TIME="\@"
P_COLOR1="\[\e[32;1m\]"
P_END_COLOR="\[\e[0m\]"
P_COLOR2="\[\e[36;1m\]"
P_USER="\u@\H"
P_PATH="\w"
GITBRANCH=`if which git &> /dev/null; then echo '$(__git_ps1 "(%s)")'; else echo ''; fi`
PS1="$P_COLOR1  $P_TIME $P_COLOR2 $P_USER : $P_PATH $GITBRANCH\n >$P_END_COLOR"
umask 022

# git-completion
if [ -f ~/.git-completion.sh ]; then
    source ~/.git-completion.sh # command line completion for git if the system doesn't already have it installed
    complete -o default -o nospace -F _git_checkout gco # so that autocomplete works with gco alias
fi

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
