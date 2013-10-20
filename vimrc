" Not compatible with the old-fashion vi mode
set nocompatible

"{{{ Vundle
filetype off      " required!

set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'UltiSnips'
Bundle 'bling/vim-airline'
Bundle 'lsdr/monokai'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'

filetype plugin indent on  " required!
"}}}

"{{{ Airline
" Powerline escape fix
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

" Always display the statusline in all windows
set laststatus=2
" Hide the default mode text (e.g. -- INSERT -- below the statusline)
set noshowmode

if has('gui_running')
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
endif
"}}}

"{{{ supertab
" use the tab key as the tab key
let g:SuperTabMappingTabLiteral = '<tab>'

let g:SuperTabMappingForward = '<c-n>'
let g:SuperTabMappingBackward = '<c-p>'
"}}}

"{{{ Search
" Ignore case for search
set ignorecase

" Search while typing string
set incsearch

" Higlight search result
set hlsearch
"}}}

"{{{ Indentation
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
"}}}

" Remove the buffer after tab was closed
set nohidden

" Highlight current line
set cul

" Set <leader> key 
let mapleader = ","
let g:mapleader = ","

"{{{ File options
set fileencodings=utf8
set encoding=utf8 nobomb " utf-8 with out BOM
set termencoding=utf-8 " default text encoding
set ff=unix " default file format
"}}}

"{{{ Appearance
syntax enable
colorscheme monokai

" remove toolbar
set guioptions-=T
" remove right-hand scroll bar
set guioptions-=r
" remove left-hand scroll bar when vertical split
set guioptions-=L

" show line numbers
set nu

" always show cursor
set ruler

" command bar height
set ch=1

" highlight syntax
syntax on

" enable highlight
set list

" non-printable characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

" 256 color mode
set t_Co=256

" the first guy to show bracket after entering the second
set showmatch
" show brackets for html
set matchpairs+=<:>
"}}}

"{{{ Misc
" hide mouse pointer when printing
set mousehide

" yank to the system register (*) by default
set clipboard=unnamed

" Enable filetype plugins
" no *~ backup and swap files
set nobackup
set nowritebackup
set noswapfile

" auto update files
set autoread

" folding by indentation
set nofoldenable

" set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Fix <Enter> for comment
set fo+=cr

" Выключаем надоедливый "звонок"
set novisualbell
set t_vb=

" session options
set sessionoptions=curdir,buffers,tabpages

" allow to use backspace instead of "x"
set backspace=indent,eol,start whichwrap+=<,>,[,]

" mouse
set mouse=a
set mousemodel=popup
"}}}

"{{{ Mapping
" Swap ; and :
map ; :
noremap ;; ;

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz

" < & > - indent of blocks
vmap < <gv
vmap > >gv

" reselct paste text
nnoremap <leader>v V`]

" quick exit to normal mode
inoremap jj <ESC>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

"}}}

set autochdir

map <leader>h :nohl<cr>

"{{{ Additional syntax
"autocmd BufRead,BufNewFile *.twig set filetype=htmljinja
"}}}

"{{{ Custom
"source ~/.vim/settings.vim
"}}}

