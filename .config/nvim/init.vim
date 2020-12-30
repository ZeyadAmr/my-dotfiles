set nu 
set cursorline
set showbreak=...
set mouse=a
set smartindent
set smartcase
set expandtab
set shiftwidth=4
set title
set clipboard+=unnamedplus
set shellcmdflag=-ic " enable aliases in ! command
set omnifunc=syntaxcomplete#Complete
filetype plugin on

nnoremap <esc> :noh<return><esc>
noremap <Leader>f :NERDTreeToggle<CR>
noremap <Leader>s :update<CR>
" autocomplete quotes and brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
" press Esc to exit terminal mode
tnoremap <Esc> <C-\><C-n>
tnoremap <M-[> <Esc>
tnoremap <C-v><Esc> <Esc>

call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/fzf.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'rstacruz/vim-hyperstyle'
Plug 'posva/vim-vue'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'aserebryakov/vim-todo-lists'
call plug#end()

colorscheme dracula
" colorscheme nord
