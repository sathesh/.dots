echo "export MYDOTS=`pwd`" >> $HOME/.bashrc
source $HOME/.bashrc
source $MYDOTS/.dots/bashrc
yum install mosh ctags cscope tmux
git clone https://github.com/gmarik/Vundle.vim.git .dots/vim/bundle/Vundle.vim
vim +PluginInstall +qall
