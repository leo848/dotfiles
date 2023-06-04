Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

let g:mkdp_theme = 'dark'
let g:mkdp_open_to_the_world = 0
let g:mkdp_echo_preview_url = 1

let g:mkdp_page_title = '${name}'
