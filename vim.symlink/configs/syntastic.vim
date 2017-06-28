noremap <silent> <F4> :SyntasticCheck<CR>
noremap! <silent> <F4> <ESC>:SyntasticCheck<CR>

let g:syntastic_mode_map = { 'mode': 'passive',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': [] }                         " stop running after every save

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_aggregate_errors = 1                                           " show multiple checkers errors
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs=1
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_objc_checker = 'oclint'                                        " Tell it to use clang instead of gcc
let g:syntastic_swift_checkers = [ 'swiftlint', 'swiftc']                      " ['swiftpm', 'swiftlint', 'swiftc']
let g:syntastic_loc_list_height=0
let g:syntastic_swift_swiftlint_use_defaults = 1

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

"let g:syntastic_error_symbol = '❌ '
let g:syntastic_style_error_symbol = '⁉️'
"let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩 '
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

"let g:syntastic_objc_config_file = '.clang_complete'                          " Read the clang
"complete file
"set statusline+=%#warningmsg#                                                 " Add Error ruler. Status line
"configuration
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
""nnoremap <silent> ` :Errors<CR>
nnoremap <leader>ee :Errors<CR>
"nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
