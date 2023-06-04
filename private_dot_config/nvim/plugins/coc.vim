Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/coc-fzf'

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <leader>cN <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>cn <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> <leader>cd <Plug>(coc-definition)
nmap <silent> <leader>cy <Plug>(coc-type-definition)
nmap <silent> <leader>ci <Plug>(coc-implementation)
nmap <silent> <leader>cR <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> <leader>ck :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('ck', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>cr <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>cf  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ca  <Plug>(coc-codeaction)
imap <m-a>       <Esc><Plug>(coc-fix-current)
" Apply AutoFix to problem on the current line.
nmap <leader>cf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" All coc commands:

" cn -> next diagnostic
" cN -> previous diagnostic
" cr -> rename symbol
" cd -> definition
" cr -> references
" cy -> type definition
" ci -> implementation
" ck -> show documentation
" cf -> fix current bug (maybe)
" ca -> apply code action
" cl -> apply code lens action
