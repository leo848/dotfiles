Plug 'terryma/vim-smooth-scroll'

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 9, 2)<cr>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 9, 2)<cr>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 9, 4)<cr>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 9, 4)<cr>
