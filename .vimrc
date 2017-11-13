set nocompatible
syntax enable
filetype off
set path+=**
set wildmenu
"focus panes with mouse clicks
set mouse=a
set number
"--------------------------------------------
" VUNDLE
"--------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"--------------------------------------------
" PLUGINS - test edit with spm(magit)
"--------------------------------------------
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tmhedberg/simpylfold'
Plugin 'tpope/vim-fugitive'
"Plugin 'bling/vim-bufferline'
"--------------------------------------------
" FONT
"--------------------------------------------
"For this config we need dejavun sans mono for powerline set as the terminal
"font

call vundle#end()
filetype plugin indent on

"Opens NERDTree on vim open
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"--------------------------------------------
" THEME
"--------------------------------------------
set t_Co=256
colorscheme gruvbox
let g:gruvbox_contrast_dark="medium"
let g:ctrlp_bufname_mod = ':~:.'
set background=dark
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"--------------------------------------------
" SHORTCUTS 
"--------------------------------------------

"Exit insert mode (fd)
imap fd <Esc>

"Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>
