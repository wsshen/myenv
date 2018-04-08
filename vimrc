set nocompatible
filetype off

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/pathname')
"
"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" code-fold
"Plugin 'tmhedberg/SimpylFold'
" auto-complete
Bundle 'Valloric/YouCompleteMe'
"Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline',{'rtp':'powerline/bingings/vim'}

" add all your plugins here
"
" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" code folding
set foldmethod=indent
set foldlevel=99
" use space key to fold/unfold code in place of za
nnoremap <space> za
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" UTF8 support
set encoding=utf-8
" to support PEP8 indentation
"
au BufNewFile,BufRead *.py
	\ set tabstop=4 | 
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=79 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix |

" flagging unnecessary whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" for the plugin YouCompleteMe
"
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" for the plugin syntastic nvie
let python_highlight_all=1
syntax on

set nu


" access system clipboard
set clipboard=unnamed
"set editing-mode vi

