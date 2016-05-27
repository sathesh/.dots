# bashrc - Sathesh

## Path manupulation
export USER_PATH=".:$MYDOTS/.dots/mybin" # Extra paths. I add my scripts over here
#export NNTPSERVER=dummynews.net		# Preferred news server.
export PATH=$USER_PATH:$PATH:
export LD_LIBRARY_PATH=/usr/local/lib

if [ -e $MYDOTS/.dots/alias ]; then
	source $MYDOTS/.dots/alias
fi
if [ -e $MYDOTS/.dots/shortcuts ]; then
	source $MYDOTS/.dots/shortcuts
fi
if [ -e $MYDOTS/.dots/gitcuts ]; then
	source $MYDOTS/.dots/gitcuts
fi


# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias tmux='tmux -f $MYDOTS/.dots/tmux.conf'
alias hiu='history -n'		# get latest history cmds from other terminals too




## Bash 
umask 022                        # no write by group or other
export autologout=0              # disable autologout
export ignoreeof=1               # disable ^D for logout (up to 4)
export FIGNORE=".o"              # don't complete .o files
export HISTFILE=~/.bash_history  # history file
export HISTFILESIZE=             # history file size - unlimited
export HISTSIZE=                 # save last 1024 commands
set -C                           # disable redirect overwrite
set -b                           # enable immediate job notify

export EDITOR=vim				# Preferred editor.
export PRINTER=lp				# Preferred printer.


## Bash history commands syncing with all terminals
shopt -s histappend
#export PROMPT_COMMAND="history -a && history -n"
export PROMPT_COMMAND="history -a"
##

## VI config
export VIMINIT='source $MYVIMRC'
export MYVIMRC='$MYDOTS/.dots/vimrc'  #or any other location you want
#####

## inputrc PATH
export INPUTRC=`echo $MYDOTS`'/.dots/inputrc'  #or any other location you want
################


## Set Prompt ##
################
#RED='\e[0;31m'
#BLUE='\e[0;34m'
#NO_COLOUR='\e[0m'
#HOST=`/bin/hostname`
#SHOST=${HOST: -10}
#PS1="$SHOST:\W\$"
#PS1="$BLUE[$RED\`echo \$CLONE\`$BLUE]$NO_COLOUR\u@\h:\W\$ "
#PS1="[\u@\h:\W]\$ "
###### 


## F5 specific
if [ -e $MYDOTS/.dots/f5cuts ]; then
	source $MYDOTS/.dots/f5cuts
fi
