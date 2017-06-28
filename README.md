## Installation

You can install this via the command-line with either curl or wget.

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
                          -DPATH_TO_LLVM_ROOT=~/.ha100/vim.symlink/bundle/iCompleteMe/third_party/icmd/cpp/llvm/ . ~/.vim/bundle/iCompleteMe/third_party/icmd/cpp/

cmake --build . --target ycm_core --config Release
```
DYLD_FORCE_FLAT_NAMESPACE=1 DYLD_INSERT_LIBRARIES=/opt/local/Library/Frameworks/Python.framework/Versions/3.6/lib/libpython3.6.dylib vim
