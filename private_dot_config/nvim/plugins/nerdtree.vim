Plug 'preservim/nerdtree', { 'on': 'NerdTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NerdTreeToggle' }
Plug 'ryanoasis/vim-devicons', { 'on': 'NerdTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': 'NerdTreeToggle' }

let NERDTreeShowHidden = 1
let NERDTreeMinimalUI  = 1

let NERDTreeDirArrowExpandable  = '▸'
let NERDTreeDirArrowCollapsible = '▾'

nnoremap <expr> <leader>n g:NERDTree.IsOpen() ? ':NERDTreeClose<CR>' : @% == '' ? ':NERDTree<CR>' : ':NERDTreeFind<CR>'

let g:plug_window = 'noautocmd vertical topleft new'

let g:WebDevIconsUnicodeDecoratedFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
