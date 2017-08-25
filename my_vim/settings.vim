" colorscheme materialtheme
" colorscheme gotham
" colorscheme seoul256-light
colorscheme monokai
set background=light
" colorscheme wwdc17
" colorscheme gruvbox
" colorscheme badwolf

" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>


set undofile
set hidden

set synmaxcol=200

" set lazyredraw

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

let g:deoplete#enable_at_startup = 1

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

" TODO: make comfortable tab switch
" gt or gT not so awesome

" for neovim only
" exit from terminal mode
tnoremap <Esc> <C-\><C-n>

map <Leader>h :noh<CR>

" This will allow you to select a word within visual mode, then with the quick
" double tap of / immediately search for the given word.
" http://blog.salsify.com/engineering/using-vim-tmux-for-ruby-on-rails
vnoremap // y/<C-R>"<CR>"

nmap <F1> <Esc>

" nnoremap <Down> gj
" nnoremap <Up> gk
" vnoremap <Down> gj
" vnoremap <Up> gk


" permanent very magick mode
" nnoremap / /\v
" vnoremap / /\v
" cnoremap %s/ %smagic/
" cnoremap \>s/ \>smagic/
" nnoremap :g/ :g/\v
" nnoremap :g// :g//

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
set scrolloff=2
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
"
set wildmenu
set wcm=<Tab>
"
if has("gui_running")
  " set guifont=Monaco:h15
  " set guifont=PT\ Mono:h15
  set guifont=Hack:h14
  " set guifont="Fantasque Sans Mono:h14"
  " set guifont="FantasqueSansMono:h15"
  set background=dark
endif

set tags=./tags;
