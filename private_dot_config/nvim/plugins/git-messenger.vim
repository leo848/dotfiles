Plug 'rhysd/git-messenger.vim'

nnoremap <leader>gm :GitMessenger<CR>
nnoremap <leader>gC :Git commit<CR>
nnoremap <leader>gc :Git commit -a<CR>
nnoremap <leader>gp :Git push
nnoremap <leader>gP :Git pull
nnoremap <leader>gs :Git status<CR>
nnoremap <leader>gd :Git diff<CR>
nnoremap <leader>gD :Git diff --cached<CR>
nnoremap <leader>gb :Git blame<CR>
nnoremap <leader>gl :Git log<CR>
nnoremap <leader>gH :Git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative<CR>
