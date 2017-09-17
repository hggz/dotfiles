let mapleader= " "

runtime! configs/**/*.vim

autocmd BufNewFile,BufRead *.swift set filetype=swift
autocmd FileType swift imap <buffer> <C-k> <Plug>(autocomplete_swift_jump_to_placeholder)
autocmd! BufWritePost .vimrc source %

"============================= general config =================================

set number                                                                      "show line numbers
set backspace=indent,eol,start                                                  "allow backspace in insert mode
set history=1000                                                                "store lots of :cmdline history
set showcmd                                                                     "show incomplete cmds down the bottom
set showmode                                                                    "show current mode down the bottom
set gcr=a:blinkon0                                                              "disable cursor blink

vmap <C-x> :!pbcopy<CR>                                                         "copy visual to macOS clipboard
vmap <C-c> :w !pbcopy<CR><CR>

"=========================== disable visual bell ==============================

set visualbell                                                                  "no sounds
set noeb vb t_vb=

set autoread                                                                    "reload files changed outside vim

syntax on                                                                       "turn on syntax highlighting
set laststatus=2                                                                "needed for airline to work

"=========================== turn off swap files ==============================

set noswapfile
set nobackup
set nowb

"============================= indentation ====================================

"set t_Co=16

if $TERM =~ '-256color'
  set t_Co=256
endif

set background=dark
colorscheme solarized
let g:solarized_termcolors=256

set term=screen-256color
set encoding=utf8

"=========================== spell checking ===================================

set spelllang=en_us,sk,cz
set complete+=kspell                                                            " Word completion
map <F7> :setlocal spell!<CR>                                                   " Toggle spell check

autocmd FileType gitcommit setlocal spell                                       " Enable spell checking
autocmd FileType markdown setlocal spell
autocmd FileType text setlocal spell
autocmd FileType rst setlocal spell

set termencoding=utf-8
set ttyfast

if has('mouse')
  set mouse=a
  set ttymouse=xterm2
endif

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

nnoremap p p=`]<C-o>                                                            " auto indent pasted text
nnoremap P P=`]<C-o>

"================================ search ======================================

set incsearch                                                                   " find the next match as we type the search
set hlsearch                                                                    " highlight searches by default
set ignorecase                                                                  " ignore case when searching...
set smartcase                                                                   " ...unless we type a capital

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

nnoremap <leader>nn :call NumberToggle()<cr>

autocmd filetype swift nnoremap <C-b> :w <bar> exec '!swift build && ./.build/debug/'.shellescape('%:r')<CR>


"============================================================================="
" Make Sure that Vim returns to the same line when we reopen a file"
"augroup line_return
"      au!
"          au BufReadPost *
"                          \ if line("'\"") > 0 && line("'\"") <= line("$") |
"                          \ execute 'normal! g`"zvzz' |
"                          \ endif
"        augroup END


"============================= USING VIM AS HEX EDITOR ========================"

map <Leader>hon :%!xxd<CR>
map <Leader>hof :%!xxd -r<CR>

"============================== bufferMovement ================================"

nnoremap <Leader>[ :bprevious<cr>
nnoremap <Leader>] :bnext<cr>


"set ruler                                                                       " Show ruler
"set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
"set nofoldenable                                                                " disable folding
"set colorcolumn=80,120
