set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'VundleVim/Vundle.vim'

runtime! vundles/**/*.vundle

call vundle#end()
filetype plugin indent on
