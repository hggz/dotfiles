![swimma](https://user-images.githubusercontent.com/2852881/27664610-cb3a7f5e-5c68-11e7-9ecd-b398b58c719d.png)

## Installation

you can install this via the commandLine with either curl or wget.

via curl

``` shell
curl -fsSL https://raw.githubusercontent.com/ha100/dotfiles/master/bootstrap | sh
```
via wget

``` shell
wget hhttps://raw.githubusercontent.com/ha100/dotfiles/master/bootstrap -O - | sh
```

had to use this on macOS to get the iCompleteMe going without constantly crashing python. this is optimized for macPorts so update the paths appropriately

```
cd ~ && mkdir ycm_build && cd ycm_build

cmake -G "Unix Makefiles" -DPYTHON_LIBRARY=/opt/local/Library/Frameworks/Python.framework/Versions/2.7/lib/libpython2.7.dylib \
                          -DPYTHON_INCLUDE_DIR=/opt/local/Library/Frameworks/Python.framework/Versions/2.7/Headers \
                          -DCMAKE_LIBRARY_PATH=/opt/local/lib \
                          -DCMAKE_INCLUDE_PATH=/opt/local/include \
                          -DPATH_TO_LLVM_ROOT=~/.ha100/vim.symlink/bundle/iCompleteMe/third_party/icmd/cpp/llvm/ . ~/.vim/bundle/iCompleteMe/third_party/icmd/cpp/

cmake --build . --target ycm_core --config Release
```

if your vim keep crashing upon start, try to inject it with this

```
DYLD_FORCE_FLAT_NAMESPACE=1 DYLD_INSERT_LIBRARIES=/opt/local/Library/Frameworks/Python.framework/Versions/2.7/lib/libpython2.7.dylib vim
```

## Basic Usage

| no  | comment | hotKeys |
|:----- | :------ | :------ |
|  1) | fileInspector on the left | CTRL + N |
|  2) | tagBar on the right | F8 |
|  3) | remove whiteSpace in th file | F1 |
|  4) | toggle sourceCode syntax check & linter | F4 |
|  5) | show undoTree | F5 |
|  6) | toggle lineNumbers to relative & back | SPACE + n + n |
|  7) | open new file in buffer | :e fileName.swift |
|  8) | easy switch buffers | SPACE + [1...9] |
|  9) | fuzzy file finder | CTRL + P |
| 10) | move between window splits | CTRL + [HJKL] |
| 11) | create new tmux window | CTRL + B + C |
| 12) | move between tmux windows | CTRL + B + [PN] |
| 13) | comment out the line | gcc |
| 14) | display / hide visual indentation lines | SPACE + l |



