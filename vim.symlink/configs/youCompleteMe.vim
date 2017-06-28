"let g:icm_confirm_extra_conf    = 1
"let g:icm_auto_trigger = 1
"let g:icm_complete_in_comments  = 1
"let g:icm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"let g:icm_extra_conf_vim_data   = ['&filetype']
"let g:icm_seed_identifiers_with_syntax = 1
"let g:icm_filetype_whitelist = { 'swift': 1 }
"let g:icm_filetype_blacklist = { 'help': 1 }
"let g:icm_filetype_specific_completion_to_disable = {
"      \ 'gitcommit': 1
"            \}
"let g:icm_show_diagnostics_ui = 1
"let g:icm_server_use_vim_stdout = 1
"let g:icm_server_log_level = 'debug'
"
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'                    " YouCompleteMe
let g:ycm_extra_conf_globlist=['~/.vim/*']
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_filetype_blacklist={
            \ 'vim' : 1,
            \ 'tagbar' : 1,
            \ 'qf' : 1,
            \ 'notes' : 1,
            \ 'markdown' : 1,
            \ 'md' : 1,
            \ 'unite' : 1,
            \ 'text' : 1,
            \ 'vimwiki' : 1,
            \ 'pandoc' : 1,
            \ 'infolog' : 1,
            \ 'objc' : 1,
            \ 'mail' : 1
            \}

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS                 " YouCompleteMe Omni-Completion
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

nnoremap <F11> :YcmForceCompileAndDiagnostics<CR>                              " YouCompleteMe key bindings
nnoremap <F12> :YcmDiags<CR>

nnoremap <silent> <Leader>yd :YcmCompleter GetDoc<CR>                          " YcmCompleter Subcommands
nnoremap <silent> <Leader>yf :YcmCompleter FixIt<CR>
nnoremap <silent> <Leader>yg :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>yi :YcmCompleter GoToInclude<CR>
nnoremap <silent> <Leader>yt :YcmCompleter GetType<CR>
