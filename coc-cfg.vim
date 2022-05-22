"""
" Coc
"""

let g:extension_root = $NVIM_SHARE_DIR . '/coc'
let g:coc_global_extensions = [
      \ 'coc-rust-analyzer',
      \ 'coc-json',
      \ 'coc-sql',
      \ 'coc-lua',
      \ 'coc-yaml',
      \ 'coc-omnisharp',
      \ 'coc-markdownlint'
      \]

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)
