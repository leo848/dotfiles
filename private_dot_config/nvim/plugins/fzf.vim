Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

" Files command: use rg to respect .gitignore
command! -bang -nargs=? -complete=dir Files
			\ call fzf#run(fzf#wrap('files', fzf#vim#with_preview({
			\ 		 'dir': <q-args>, 'sink': 'e', 'source': 'rg --files --hidden'
			\ }), <bang>0))

" AllFiles: ignore .gitignore
command! -bang -nargs=? -complete=dir AllFiles
			\ call fzf#run(fzf#wrap('allfiles', fzf#vim#with_preview({
			\ 		 'dir': <q-args>, 'sink': 'e', 'source': 'rg --files --hidden --no-ignore'
			\ }), <bang>0))

nmap <leader>f :Files<cr>
nmap <leader>F :AllFiles<cr>
nmap <leader>gf :GFiles<cr>

nmap <leader>b :Buffers<cr>
nmap <leader>h :History<cr>
