![swimma](https://user-images.githubusercontent.com/2852881/27667478-3d63409a-5c7b-11e7-8ed3-6337e007dad7.png)
![voltron](https://user-images.githubusercontent.com/2852881/30522554-4ca7e0c4-9bd2-11e7-931e-e3682dba3717.png)
![completion](https://user-images.githubusercontent.com/2852881/30525756-2886f0c8-9c0d-11e7-90fd-43dcb6cad1ee.png)
[more screenShots](https://github.com/ha100/dotfiles/issues/1)

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

## Basic Usage

| no  | comment | hotKeys | info |
|:----- | :------ | :------ ||
|  1) | fileInspector on the left | <CTRL-n> ||
|  2) | tagBar on the right | F8 ||
|  3) | remove whiteSpace in th file | F1 ||
|  4) | toggle sourceCode syntax check & linter | F4 ||
|  5) | show undoTree | F5 ||
|  6) | toggle lineNumbers to relative & back | <SPACE-n> + n ||
|  7) | open new file in buffer | :e fileName.swift ||
|  8) | easy switch buffers | <SPACE-[1...9]> ||
|  9) | fuzzy file finder | CTRL + P | <CTRL-f> and <CTRL-b> to cycle between modes |
| 10) | move between window splits | <CTRL-[hjkl]> ||
| 11) | create new tmux window | <CTRL-b> + c ||
| 12) | move between tmux windows | <CTRL-b> + [pn] ||
| 13) | comment out the line | gcc, gcip, gc3j ||
| 14) | display / hide visual indentation lines | <SPACE-l> ||
| 15) | wrap a word in quotes | ciw "" ESC P | move cursor to any letter of the word |
| 16) | indent visual block | <shift->> or <shift-<> ||

## Errors

tagBar

``` shell
Error detected while processing function airline#extensions#tagbar#currenttag[3]..tagbar#currenttag[16]..<SNR>171_Init[4]..<SNR>171_CheckForExCtags[69]..<SNR>171_CheckExCtagsVersion:                                                        
line   15:                                                                                                                                                                                                                                    
E684: list index out of range: 1
```
make sure g:tagbar_ctags_bin points to the output of the `which ctags`


