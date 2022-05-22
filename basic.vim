set nocompatible

syntax on
filetype plugin indent on
let c_minlines=500 " number of lines that vim goes backwards for syntax highlight
set wrap nolist linebreak breakat=\s " wrap long lines
set modeline " check vim configuration in file
set scrolloff=10

nnoremap ; :

" moving indentation
vnoremap < <gv
vnoremap > >gv

" removing trailing spaces
autocmd FileType lua,vim,cmake,json,javascript,typescript autocmd BufWritePre <buffer> :%s/\s\+$//e

" tab size
autocmd FileType vim,cs,lua,,cmake,json,yaml,javascript,typescript setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType bash,sh,rust,dockerfile,sql,toml setlocal shiftwidth=4 tabstop=4 expandtab

" folding
autocmd FileType yaml setlocal foldmethod=indent
autocmd FileType rust,json,javascript setlocal foldmethod=syntax

" highlight search
set hlsearch
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" buffer navigation
map <A-1> :buffer 1 <CR>
map <A-2> :buffer 2 <CR>
map <A-3> :buffer 3 <CR>
map <A-4> :buffer 4 <CR>
map <A-5> :buffer 5 <CR>
map <A-6> :buffer 6 <CR>
map <A-7> :buffer 7 <CR>
map <A-8> :buffer 8 <CR>
map <A-9> :buffer 9 <CR>

" tab navigation
map :tp :tabprev
map :tn :tabnext
map <C-t> :tabnew <CR>

" quit and save
map <C-s> :w <CR>
map <C-q> :q <CR>
