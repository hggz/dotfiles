let mapleader= " "

runtime! configs/**/*.vim

" ================ general config ====================

set number                      "show line numbers
set backspace=indent,eol,start  "allow backspace in insert mode
set history=1000                "store lots of :cmdline history
set showcmd                     "show incomplete cmds down the bottom
set showmode                    "show current mode down the bottom
set gcr=a:blinkon0              "disable cursor blink
set visualbell                  "no sounds
set autoread                    "reload files changed outside vim

syntax on                       "turn on syntax highlighting
set laststatus=2                "needed for airline to work

" ================ turn off swap files ==============

set noswapfile
set nobackup
set nowb

" ================ indentation ======================

set background=dark
colorscheme solarized
let g:solarized_termcolors=256

if $TERM =~ '-256color'
  set t_Co=256
endif

set term=screen-256color
set encoding=utf8
set termencoding=utf-8

set list listchars=tab:\│\ 

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" ================ search ===========================

set incsearch                   " find the next match as we type the search
set hlsearch                    " highlight searches by default
set ignorecase                  " ignore case when searching...
set smartcase                   " ...unless we type a capital

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

nnoremap <leader>nn :call NumberToggle()<cr>

autocmd filetype swift nnoremap <C-b> :w <bar> exec '!swift build && ./.build/debug/'.shellescape('%:r')<CR>


"==========================================================================="
"" Make Sure that Vim returns to the same line when we reopen a file"
"augroup line_return
"      au!
"          au BufReadPost *
"                          \ if line("'\"") > 0 && line("'\"") <= line("$") |
"                          \ execute 'normal! g`"zvzz' |
"                          \ endif
"        augroup END


""==========================================================================="
"" USING VIM AS HEX EDITOR

map <Leader>hon :%!xxd<CR>
map <Leader>hof :%!xxd -r<CR>

"==========================================================================="
" bufferMovement

nnoremap <Leader>[ :bprevious<cr>
nnoremap <Leader>] :bnext<cr>
