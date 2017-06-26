#!/usr/bin/env bash

install_vim_plugins() {
    env SHELL="/bin/sh" vim -u "$HOME/.vim/vundle.vim" +PluginInstall +qall || {
        echo "Error: install vim plugins failed!"
        exit 1
    }
}

if test $(which vim); then
    install_vim_plugins
else
    echo "Error: vim not found!"
    exit 1
fi

exit 0
