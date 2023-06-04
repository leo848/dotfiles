" Aliases for commands

Plug 'Konfekt/vim-alias'


function! RunAliases()
    augroup aliases
        autocmd!
        Alias! newtab tabnew
        Alias! nt tabnew 
        Alias! editconfig tabnew\ ~/.vimrc

        Alias! b !sh\ ./build.sh
        Alias! g Git

        augroup npm
            autocmd!
            autocmd FileType vue Alias! -buffer f !npm\ run\ lint
            autocmd FileType vue Alias! -buffer li !npm\ run\ lint
            autocmd FileType typescript Alias! -buffer f !npm\ run\ lint
            autocmd FileType typescript Alias! -buffer li !npm\ run\ lint
        augroup END

        augroup python
            autocmd!
            autocmd FileType python Alias! -buffer f !black\ --fast\ %
            autocmd FileType python Alias! -buffer li !black\ --fast\ %
        augroup END

        augroup js
            autocmd!
            autocmd FileType javascript Alias! -buffer f !prettier\ --write\ %
            autocmd FileType javascript Alias! -buffer li !prettier\ --write\ %
        augroup END
    augroup END
endfunction

augroup run_aliases
    autocmd!
    autocmd VimEnter * :call RunAliases()
augroup END
