let language_client = "coc"
if $NVIM_LANGUAGE_CLIENT != ""
  let language_client = $NVIM_LANGUAGE_CLIENT
endif

call plug#begin($NVIM_SHARE_DIR . '/plugged')

Plug 'kyazdani42/blue-moon' " theme
" Plug 'OmniSharp/omnisharp-vim' " for C#
" Plug 'dense-analysis/ale'
Plug 'ekalinin/Dockerfile.vim'
Plug 'simrat39/rust-tools.nvim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neovim/nvim-lspconfig'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

if language_client != ""
  execute "source " . $NVIM_RC_DIR . "/" . language_client . "-plug.vim"
endif

call plug#end()

"""
" airline
""
if $COLORTERM == "truecolor" || $TERM =~ "256color" || has("termguicolors")
  let g:airline_powerline_fonts = 1
  let g:airline_theme="ayu_dark"

  let g:airline#extensions#tabline#enabled = 1
endif

"""
" NERDTree
""
noremap <silent> <C-\> :NERDTreeToggle <CR>
let NERDTreeIgnore = [
      \ '^node_modules$'
      \ ]

"""
" LSP
""
if language_client != ""
  execute "source " . $NVIM_RC_DIR . "/" . language_client . "-cfg.vim"
endif
