if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'


  " TODO replace ag command if rails app
  " ag search --ignore log --ignore vendor --ignore app/assets  --ignore tmp --column
endif
