let g:vim_tags_project_tags_command = "{CTAGS} -R {OPTIONS} {DIRECTORY} --exclude=.git --languages=ruby --exclude=log --exclude=node_modules --exclude=gulp --exclude=public/assets 2>/dev/null"
" ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths) --exclude=log --exclude=node_modules --exclude=gulp --exclude=public/assets

