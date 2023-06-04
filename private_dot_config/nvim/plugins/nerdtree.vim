Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

let NERDTreeShowHidden = 1
let NERDTreeMinimalUI  = 1

let NERDTreeDirArrowExpandable  = '▸'
let NERDTreeDirArrowCollapsible = '▾'

nnoremap <expr> <leader>n g:NERDTree.IsOpen() ? ':NERDTreeClose<CR>' : @% == '' ? ':NERDTree<CR>' : ':NERDTreeFind<CR>'

let g:plug_window = 'noautocmd vertical topleft new'

let g:WebDevIconsUnicodeDecoratedFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
