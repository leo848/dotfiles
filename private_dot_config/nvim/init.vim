"  
"
"    ██
"    ██
"    ██
"    ██         ░████▒    ░████░
"    ██        ░██████▒  ░██████░
"    ██        ██▒  ▒██  ███  ███
"    ██        ████████  ██░  ░██
"    ██        ████████  ██    ██
"    ██        ██        ██░  ░██
"    ██        ███░  ▒█  ███  ███
"    ████████  ░███████  ░██████░
"    ████████   ░█████▒   ░████░


"    Neovim configuration by Leo Blume <leoblume@gmx.de>
"    Based on configuration by Jess Archer <jess@jessarcher.com>


" ----------------------------------------------------
"  General settings
" ----------------------------------------------------

set showcmd
set confirm
set undofile
set wildmenu
set autowrite
set tabstop=3
set noshowmode
set ignorecase
set scrolloff=8
set nojoinspaces
set shiftwidth=3
set showtabline=2
set termguicolors
set wildignorecase
set signcolumn=yes
set sidescrolloff=8
set foldmethod=indent
set number relativenumber
set wildmode=list:longest
set clipboard=unnamedplus
set shiftwidth=4 tabstop=4
set wildignore=*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img

let g:python3_host_prog = '/usr/bin/python3'


" ----------------------------------------------------
"  Keybindings
" ----------------------------------------------------

let mapleader="\<space>"

nnoremap <leader>ve :tabnew $MYVIMRC<cr> " config-edit
nnoremap <leader>vs :source $MYVIMRC<cr> " config-source

nnoremap <leader>k :nohlsearch<cr>

" Allow gf to open non-existent files
map gf :tabnew <cfile><cr>

" Reselect visual selection between windows
vnoremap < <gv
vnoremap > >gv

" Make Y behave like D, S, C etc.
nnoremap Y y$

" Keep search in center
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

inoremap jk <Esc>

" ----------------------------------------------------
"  Plugins
" ----------------------------------------------------

" Auto-install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

source ~/.config/nvim/plugins/alias.vim
source ~/.config/nvim/plugins/autoclose.vim
source ~/.config/nvim/plugins/carbon-now.vim
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/copilot.vim
source ~/.config/nvim/plugins/ctrlsf.vim
source ~/.config/nvim/plugins/coc.vim
" source ~/.config/nvim/plugins/easy-align.vim
source ~/.config/nvim/plugins/editorconfig.vim
source ~/.config/nvim/plugins/fugitive.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/gruvbox.vim
source ~/.config/nvim/plugins/gist.vim
source ~/.config/nvim/plugins/git-messenger.vim
source ~/.config/nvim/plugins/loremimpsum.vim
source ~/.config/nvim/plugins/markdown-preview.vim
source ~/.config/nvim/plugins/movelines.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/obsession.vim
source ~/.config/nvim/plugins/peekaboo.vim
source ~/.config/nvim/plugins/polyglot.vim
source ~/.config/nvim/plugins/quick-scope.vim
source ~/.config/nvim/plugins/repeat.vim
source ~/.config/nvim/plugins/smooth-scroll.vim
source ~/.config/nvim/plugins/splitjoin.vim
source ~/.config/nvim/plugins/startify.vim
source ~/.config/nvim/plugins/statusbar.vim
source ~/.config/nvim/plugins/surround.vim
source ~/.config/nvim/plugins/text-objects.vim
source ~/.config/nvim/plugins/tmux-navigator.vim
source ~/.config/nvim/plugins/vimsence.vim
source ~/.config/nvim/plugins/which-key.vim

call plug#end()
doautocmd User PlugLoaded
