" " Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
"
" " Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
"
" " Plug 'vim-ruby/vim-ruby'
" Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails'
Plug 'vim-scripts/tComment'
Plug 'scrooloose/nerdtree'

Plug 'rking/ag.vim'


Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
" Plug 'ajh17/VimCompletesMe'
" Plug 'Valloric/YouCompleteMe'
" let g:ycm_semantic_triggers = {'haskell' : ['.']}

Plug 'Raimondi/delimitMate'

" Plug 'airblade/vim-gitgutter'

Plug 'bling/vim-airline'

Plug 'bronson/vim-trailing-whitespace'

" Plug 'junegunn/vim-easy-align'
Plug 'vim-scripts/Align'

Plug 'vim-scripts/matchit.zip'
" Plug 'terryma/vim-expand-region'

Plug 'haya14busa/incsearch.vim'
" Plug 'osyo-manga/vim-over'

Plug 'Yggdroot/indentLine'

" Plug 'tpope/vim-dispatch'

Plug 'kien/ctrlp.vim'

Plug 'justinmk/vim-dirvish'
nnoremap <silent> - :Dirvish %:p:h<cr>
let g:dirvish_hijack_netrw=0

" Haskell
Plug 'bitc/vim-hdevtools'
Plug 'scrooloose/syntastic'
Plug 'lukerandall/haskellmode-vim'
Plug 'raichoo/haskell-vim'

Plug 'eagletmt/neco-ghc'
Plug 'Shougo/neocomplete.vim'
setlocal omnifunc=necoghc#omnifunc
let g:necoghc_enable_detailed_browse = 1

" let g:ycm_semantic_triggers = {'haskell' : ['.']}
" let $PATH = $PATH . ':' . expand("~/.cabal/bin")

Plug 'szw/vim-tags'
" Plug 'majutsushi/tagbar'
