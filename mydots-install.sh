echo "export MYDOTS=`pwd`" >> $HOME/.bashrc
source $MYDOTS/.dots/bashrc
git clone https://github.com/gmarik/Vundle.vim.git .dots/vim/bundle/Vundle.vim
vim +PluginInstall +qall
