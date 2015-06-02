# .bashrc

########### Sathesh Start 
## Path manupulation
export USER_PATH=".:$MYDOTS/.dots/mybin" # Extra paths.
export NNTPSERVER=dummynews.net		# Preferred news server.
export PATH=$USER_PATH:$PATH:
export LD_LIBRARY_PATH=/usr/local/lib

source $MYDOTS/.dots/shortcuts
source $MYDOTS/.dots/gitcuts


# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias go='go.sh'
alias tmux='tmux -f $MYDOTS/.dots/tmux.conf'




## Bash 
umask 022                        # no write by group or other
export autologout=0              # disable autologout
export FIGNORE=".o"              # don't complete .o files
export HISTFILE=~/.bash_history  # history file
export HISTFILESIZE=500          # history file size
export HISTSIZE=128              # save last 128 commands
export ignoreeof=1              # disable ^D for logout (up to 4)
set -C                           # disable redirect overwrite
set -b                           # enable immediate job notify

export EDITOR=vi				# Preferred editor.
export PRINTER=lp				# Preferred printer.


## Bash history commands syncin with all terminals
shopt -s histappend
export PROMPT_COMMAND="history -a && history -n"
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
###### Sathesh end ##


## F5 specific
source $MYDOTS/.dots/f5cuts
