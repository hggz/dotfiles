let g:ctrlp_use_caching = 0
let g:ctrlp_pworking_path_mode = 0
let g:ctrlp_match_window = 'order:ttb,min:20,max:20'
let g:ctrlp_prompt_mappings = { 'PrtSelectMove("j")':   ['<c-n>', '<down>'],
                              \ 'PrtSelectMove("k")':   ['<c-p>', '<up>'],
                              \ 'PrtHistory(-1)':       [],
                              \ 'PrtHistory(1)':        [],
                              \ }
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_status_func = { 'main': 'ctrlpline#main' }
let g:ctrlp_match_func = { 'match' : 'matcher#cmatch' }

nnoremap <silent> g/ :CtrlP<cr>
