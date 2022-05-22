let $NVIM_RC_DIR = expand('<sfile>:p:h')
let $NVIM_SHARE_DIR = $HOME . '/.local/share/nvim'
let $NVIM_CACHE_DIR = $HOME . '/.cache/nvim'

let g:python3_host_prog = '/usr/bin/python3'

execute "source " . $NVIM_RC_DIR . "/basic.vim"
execute "source " . $NVIM_RC_DIR . "/localization.vim"
if $NVIM_NOT_EXTENDED == ''
\ && filereadable($NVIM_SHARE_DIR . "/site/autoload/plug.vim")
    execute "source " . $NVIM_RC_DIR . "/extended.vim"
endif
execute "source " . $NVIM_RC_DIR . "/theme.vim"

" lua require'lspconfig'.bashls.setup{}
" lua require'lspconfig'.sqlls.setup{}
" lua require('rust-tools').setup({})

map <A-1> :buffer 1 <CR>
map <A-2> :buffer 2 <CR>
map <A-3> :buffer 3 <CR>
map <A-4> :buffer 4 <CR>
map <A-5> :buffer 5 <CR>
map <A-6> :buffer 6 <CR>
map <A-7> :buffer 7 <CR>
map <A-8> :buffer 8 <CR>
map <A-9> :buffer 9 <CR>

map :tp :tabprev
map :tn :tabnext

map <C-t> :tabnew <CR>
map <C-s> :w <CR>
" map <C-w> :q <CR>
map <C-q> :q <CR>
