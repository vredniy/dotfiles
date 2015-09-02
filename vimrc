set nocompatible

call plug#begin('~/.vim/plugged')
if filereadable(expand('~/.my_vim/before.vim'))
	exe 'source' expand('~/.my_vim/before.vim')
end

if filereadable(expand('~/.my_vim/plugins.vim'))
	exe 'source' expand('~/.my_vim/plugins.vim')
end

call plug#end()

if filereadable(expand('~/.my_vim/settings.vim'))
	exe 'source' expand('~/.my_vim/settings.vim')
end

for f in split(glob('~/.my_vim/plugins/*.vim'), '\n')
  " if filereadable(expand(f))
    exe 'source' f
  " end
endfor

nmap <leader>s :call <SID>SynStack()<CR>
function! <SID>SynStack()
   if !exists("*synstack")
      return
   endif
   echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" vmap <Enter> <Plug>(EasyAlign)
