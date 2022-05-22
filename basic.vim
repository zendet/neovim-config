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
