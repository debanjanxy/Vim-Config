set nocompatible              " required
filetype off                  " required

set encoding=utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'itchyny/lightline.vim'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'kien/ctrlp.vim'
"Plugin 'nvie/vim-flake8'
"Plugin 'rakr/vim-one'
call vundle#end()            " required


filetype plugin indent on    " required

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdcommenter'
"Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'junegunn/seoul256.vim'

call plug#end()


" nerdcommenter settings
nmap // \c 
vmap // \cs


" setting horizontal and vertical splits
set splitbelow
set splitright


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Enable folding
set foldmethod=indent
set foldlevel=99


" Enable folding with the spacebar
nnoremap <space> za


" Setting up indendation

au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" setting up pyflakes

let python_highlight_all=1

syntax on
let g:onedark_termcolors=256
"let g:airline_theme='one'
"colorscheme one
colorscheme onedark
"colo seoul256
set background=dark
"set t_Co=256


" nerd tree settings
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <F2> :NERDTreeToggle<CR>

" setting up line numbering
set nu

" Rainbow bracket settings
let g:rainbow_active = 1

" code folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

set backspace=indent,eol,start
