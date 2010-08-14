# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PATH=/root/puppet/bin:/root/puppet/sbin:/root/facter/bin:/root/facter/sbin:$PATH
export RUBYLIB=/root/puppet/lib
