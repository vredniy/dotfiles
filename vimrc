set nocompatible

" Plugs {{{
call plug#begin('~/.vim/plugged')

" colorcheme
" Plug 'sickill/vim-monokai'
Plug 'morhetz/gruvbox'
Plug 'freeo/vim-kalisi'

Plug 'justinmk/vim-sneak'

Plug 'maxbrunsfeld/vim-yankstack'
Plug 'AndrewRadev/splitjoin.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'fishbullet/deoplete-ruby'

Plug 'tpope/vim-unimpaired'

" disable arrows and hjkl keys
" Plug 'wikitopian/hardmode'

Plug 'airblade/vim-gitgutter'

Plug 'AndrewRadev/switch.vim'
Plug 'valloric/MatchTagAlways'

" " Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
"
Plug 'vim-ruby/vim-ruby'
" Plug 'elixir-lang/vim-elixir'
" Plug 'slashmili/alchemist.vim'
" Plug 'sheerun/vim-polyglot'

Plug 'tpope/vim-rails'

Plug 'vim-scripts/tComment'
Plug 'scrooloose/nerdtree'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
Plug 'garbas/vim-snipmate'

Plug 'terryma/vim-multiple-cursors'

" Ruby block as text object
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'ecomba/vim-ruby-refactoring'

Plug 'tpope/vim-fugitive'

Plug 'rking/ag.vim'

" Plug 'strogonoff/vim-coffee-script'

Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
" Plug 'ajh17/VimCompletesMe'
" Plug 'Valloric/YouCompleteMe'
" let g:ycm_semantic_triggers = {'haskell' : ['.']}

Plug 'Raimondi/delimitMate'

" Plug 'airblade/vim-gitgutter'

" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'

Plug 'bronson/vim-trailing-whitespace'

Plug 'junegunn/vim-easy-align'
Plug 'vim-scripts/Align'
Plug 'godlygeek/tabular'

Plug 'vim-scripts/matchit.zip'

Plug 'tommcdo/vim-exchange'
" Plug 'terryma/vim-expand-region'

" Plug 'haya14busa/incsearch.vim'
" Plug 'osyo-manga/vim-over'

" Plug 'Yggdroot/indentLine'

" Plug 'tpope/vim-dispatch'

" Plug 'kien/ctrlp.vim'
Plug 'ctrlpvim/ctrlp.vim' "| Plug 'habamax/vim-ctrlp-colorscheme'
Plug 'tacahiroy/ctrlp-funky'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

Plug 'justinmk/vim-dirvish'

Plug 'szw/vim-tags'
Plug 'majutsushi/tagbar'

" Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'neomake/neomake'
Plug 'lyokha/vim-xkbswitch'

" Experiments {{
Plug 'sjl/gundo.vim'

Plug 'editorconfig/editorconfig-vim'

Plug 'tpope/vim-bundler'

Plug 'tpope/vim-endwise'

Plug 't9md/vim-quickhl'

Plug 'tpope/vim-unimpaired'
" }}

"
" Plug 'eagletmt/neco-ghc'
"
" Plug 'Shougo/unite.vim'

" HINT: Delete buffers and close files in Vim without closing your windows
Plug 'moll/vim-bbye'
" HINT: try me if that plugin doesn't work (https://github.com/qpkorr/vim-bufkill)

call plug#end()
" Plugs }}}

" xkbswitch {{{
" HINT: https://github.com/myshov/libxkbswitch-macosx
" let g:XkbSwitchLib = 'liblibxkbswitch.dylibck_after_paste/Users/zudochkin/Library/Developer/Xcode/DerivedData/libxkbswitch-aevoofumcqfjnbawtustqvdywzqh/Build/Products/Debug/liblibxkbswitch.dylib'
let g:XkbSwitchEnabled = 1
" }}}

" Configuration {{{
" colorscheme monokai
colorscheme gruvbox
" set background=light

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

set undofile
set dir=~/.vim/swp//
set undodir=~/.local/share/nvim/undo//
set noswapfile
set hidden

set synmaxcol=200

set lazyredraw

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

let g:deoplete#enable_at_startup = 0

" set shell=zsh\ -i
set shell=/bin/zsh

set backspace=indent,eol,start

set tabstop=2
set shiftwidth=2
set expandtab

let mapleader=","
let g:mapleader=","

set clipboard=unnamed
set mouse=a
set autoread

" TODO: make comfortable tab switch
" gt or gT not so awesome

" for neovim only
" exit from terminal mode by pressing Esc
if has("nvim")
  tnoremap <Esc> <C-\><C-n>
endif

map <Leader>h :noh<CR>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" vim-bbye
nnoremap <Leader>q :Bdelete<CR>

" This will allow you to select a word within visual mode, then with the quick
" double tap of / immediately search for the given word.
" http://blog.salsify.com/engineering/using-vim-tmux-for-ruby-on-rails
vnoremap // y/<C-R>"<CR>"

nmap <F1> <Esc>

" permanent very magick mode
nnoremap / /\v
vnoremap / /\v
cnoremap %s/ %smagic/
cnoremap \>s/ \>smagic/
nnoremap :g/ :g/\v
nnoremap :g// :g//

set number
set numberwidth=3

syntax on

set ruler

set cindent
set smartindent
set smartcase
set autoindent

set hlsearch
set incsearch   " do incremental searching
set ignorecase
"
" " Switch wrap off for everything
set nowrap
"
set showcmd   " display incomplete commands
"
" " Always display the status line
set laststatus=2

set dir=~/.vim/swp
"
" " нужно для работы макросов
filetype plugin indent on
"
" " Keep more content at the bottom of the buffer
set scrolloff=10
"
" " Highlight cursor line
set cursorline
"
set history=1000
"
" " Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
" au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set
" ft=ruby
" au BufRead,BufNewFile {*.html.slim} set ft=slim
" au BufRead,BufNewFile {*.skim} set ft=slim
au BufRead,BufNewFile {*.es6} set ft=javascript

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" enable folding for JSON files
autocmd FileType json setlocal foldmethod=syntax
autocmd FileType json normal zR
"
" "
" " " md, markdown, and mk are markdown and define buffer-local preview
" au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} set ft=markdown
" "
" " " add json syntax highlighting
" au BufNewFile,BufRead *.json set ft=javascript
"
" " highlight ExtraWhitespace ctermbg=red guibg=red
" " match ExtraWhitespace /\s\+$/
" " autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" " autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" " autocmd InsertLeave * match ExtraWhitespace /\s\+$/
" " autocmd BufWinLeave * call clearmatches()
"
runtime macros/matchit.vim

set wildmenu
set wcm=<Tab>

if has("gui_running")
  " set guifont=Monaco:h15
  " set guifont=PT\ Mono:h15
  set guifont=Hack:h14
  " set guifont="Fantasque Sans Mono:h14"
  " set guifont="FantasqueSansMono:h15"
  set background=dark
endif

set tags=./tags;
" Configuration }}}

" Neomake {{{
let g:neomake_ruby_enabled_makers=['mri', 'rubocop']
autocmd FileType ruby autocmd! BufWritePost * Neomake
" Neomake }}}

" NERDTree {{{
map ,n  :NERDTreeToggle<CR>
" NERDTree }}}

" Ag {{{
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
  " let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
set grepprg=ag\ --nogroup\ --nocolor

  " TODO replace ag command if rails app
  " ag search --ignore log --ignore vendor --ignore app/assets  --ignore tmp --column
endif
" Ag }}}

" CtrlP {{{
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"   \ 'file': '\v\.(exe|so|dll)$',
"   \ 'link': 'some_bad_symbolic_links',
"   \ }
"
" set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
" let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" let g:ctrlp_user_command='ag %s -l -i --nocolor -g ""'
let g:ctrlp_use_caching=0

" let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlPMixed'
" let g:ctrlp_extensions = ['tag' 'dir']
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_height = 25

" let g:ctrlp_extensions = ['funky', 'line', 'buffertag']
let g:ctrlp_extensions = ['dir', 'mixed']
let g:ctrlp_working_path_mode = 0

" mappings
nnoremap ,, :CtrlP<cr>
nnoremap ,p :CtrlPMixed<cr>
nnoremap ,b :CtrlPBuffer<cr>
nnoremap ,t :CtrlPTag<cr>
nnoremap ,l :CtrlPLine<cr>
nnoremap ,f :CtrlPFunky<cr>
" CtrlP }}}

" map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-stay)

" **************************************************

" nerdtree {{{
nmap <leader>l :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
let NERDTreeQuitOnOpen=0
" let NERDTreeShowHidden=0
" let NERDTreeKeepTreeInNewTab=1
" Disable display of the 'Bookmarks' label and 'Press ? for help' text
let NERDTreeMinimalUI=1
" Use arrows instead of + ~ chars when displaying directories
let NERDTreeDirArrows=1
let NERDTreeBookmarksFile= $HOME . '/.vim/.NERDTreeBookmarks'
" nerdtree }}}


" airline {{{
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '◀'
" let g:airline_theme='powerlineish'
" let g:airline_theme='aurora'
" airline }}}

" lightline {{{
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
" lightline }}}


" quickhl {{{
nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)

nmap <Space>w <Plug>(quickhl-manual-this-whole-word)
xmap <Space>w <Plug>(quickhl-manual-this-whole-word)

nmap <Space>c <Plug>(quickhl-manual-clear)
vmap <Space>c <Plug>(quickhl-manual-clear)

nmap <Space>M <Plug>(quickhl-manual-reset)
xmap <Space>M <Plug>(quickhl-manual-reset)

nmap <Space>j <Plug>(quickhl-cword-toggle)
nmap <Space>] <Plug>(quickhl-tag-toggle)
map H <Plug>(operator-quickhl-manual-this-motion)
" quickhl }}}

" dirvish {{{
nnoremap <silent> - :Dirvish %:p:h<cr>
" nnoremap <silent> _ :NERDTree %:p:h<cr>
let g:dirvish_hijack_netrw=0
" dirvish }}}



" easy align {{{
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" easy align }}}


" let g:vim_tags_project_tags_command = "{CTAGS} -R {OPTIONS} {DIRECTORY} --exclude=.git --languages=ruby --exclude=log --exclude=node_modules --exclude=gulp --exclude=public/assets 2>/dev/null"
" ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths) --exclude=log --exclude=node_modules --exclude=gulp --exclude=public/assets

" foldmethod=marker
" vim:ts=2:sw=2::foldlevel=0:
