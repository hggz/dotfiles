set list listchars=tab:\│\ ,trail:-,extends:>,precedes:<,nbsp:⎵,eol:¬
"set nolist
"set listchars=tab:▸·,trail:-,extends:>,precedes:<,nbsp:⎵,eol:¬

let g:indentLine_setColors = 0
let g:indentLine_char = '│'                                                           " Options: │┆⏐┊╽▏⠇⠅  ፧ │
let g:indentLine_enabled = 1
let g:indentLine_color_term = 239

nnoremap <leader>l : IndentLinesToggle<cr>
