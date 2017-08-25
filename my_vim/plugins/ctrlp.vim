" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"   \ 'file': '\v\.(exe|so|dll)$',
"   \ 'link': 'some_bad_symbolic_links',
"   \ }
"
" set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
" let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'


set grepprg=ag\ --nogroup\ --nocolor
let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
" let g:ctrlp_user_command='ag %s -l -i --nocolor -g ""'
let g:ctrlp_use_caching=0

" let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_extensions = ['funky', 'line', 'buffertag']
" let g:ctrlp_extensions = ['tag' 'dir']
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_height = 25

" mappings
nnoremap ,, :CtrlP<cr>
nnoremap ,p :CtrlPMixed<cr>
nnoremap ,b :CtrlPBuffer<cr>
nnoremap ,t :CtrlPTag<cr>
nnoremap ,l :CtrlPLine<cr>
nnoremap ,f :CtrlPFunky<cr>
