"## Set run time path to $MYDOTS/.dots/vim
set rtp+=$MYDOTS/.dots/vim


"## Vundle Setup
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$MYDOTS/.dots/vim/bundle/Vundle.vim

call vundle#begin("$MYDOTS/.dots/vim/bundle")
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" nerd tree plugin is for directory explore
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

" Taglist plugin - source code browser for all languages
" This plugin requires ctags
Plugin 'taglist.vim'
" This variable is set to enable statusline display with tag name 
let taglist_enabled=1


" Pep8 plugin - python style checker. You need to have pep8 installed. 
" pip install pep8 - to install
Plugin 'pep8'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required





"# Vundle Setup End


"## Look, font, etc
color desert
set number
set ruler                 "See status line
"set nowrap
set showcmd
set showmatch             "show matching brackets
set nostartofline         " leave my cursor where it was
"syntax enable             
"syntax on             
"filetype on             

"## tabs, space
"set ts=2                  "tabstop
"set sw=2                  "shiftwidth
"set expandtab             "et
"set ai                    "autoindent
"set cindent
"set smarttab
"set smartindent
"
"
"## no swap file, auto write
set noswapfile
set autowrite


"## search
set incsearch
set hlsearch
set ignorecase




""## status bar
hi statusline   term=NONE cterm=NONE ctermfg=black ctermbg=grey
hi statuslineNC term=NONE cterm=NONE ctermfg=white  ctermbg=grey

set laststatus=2
hi User1 guibg=red ctermbg=red

"## for display function name in statusline 
"## This requires TagList plugin
if taglist_enabled
	" check if Taglist loaded
	if &ruler
		let &statusline='%<%f %(%h%m%r %)%=%{Tlist_Get_Tagname_By_Line()} %-15.15(%l,%c%V%)%P'
		" Equivalent to default status
		" line with 'ruler' set:
		"
		" '%<%f %h%m%r%=%-15.15(%l,%c%V%)%P'
	else
		let &statusline='%<%f %(%h%m%r %)%=%{Tlist_Get_Tagname_By_Line()}'
	endif
endif
	
"# Status bar end


"## <leader> shortcuts
let mapleader = "\<Space>"
"Save file
nnoremap <Leader>w :w<CR>
"Toggle file
nnoremap <Leader>t :e#<CR>
"Save&Quit vi
nnoremap <Leader>q :wq<CR>
"Quit vi
nnoremap <Leader>x :q<CR>
"########


"## Open multiple files in horizontal split
if argc() > 1
  silent all
endif
"##


"## Split window - resize
set winheight=5                       "min split window size
"Maximize current split
nnoremap <Leader>m :resize +999<CR>
nnoremap <Leader>n <C-w>=



"## Pep8
let g:pep8_map='<Leader>8'
let g:pep8_ignore="E265"
