set nocompatible " be iMproved, required
filetype off     " required

call plug#begin('~/.local/share/nvim/site/plugged')
 " Plugin Section
 Plug 'mhinz/vim-startify'
 Plug 'NLKNguyen/papercolor-theme'
 Plug 'scrooloose/nerdtree'
 Plug 'ryanoasis/vim-devicons'
 Plug 'preservim/nerdcommenter'
 Plug 'vim-airline/vim-airline'
 Plug 'wfxr/minimap.vim'

 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'

 Plug 'pangloss/vim-javascript'
 Plug 'leafgarland/typescript-vim'
 Plug 'peitalin/vim-jsx-typescript'
 Plug 'chr4/nginx.vim'

 Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let mapleader = " "

filetype plugin indent on   " required
syntax on                   " syntax highlighting

" Setting file types
au BufRead,BufNewFile nginx.conf.erb set ft=nginx

set background=dark
colorscheme papercolor

" Tab Options 
set shiftwidth=2
set tabstop=2
set softtabstop=2           " Number of spaces a tab counts when editing
set expandtab

" Some Basic Configs
set number                  " add line numbers
set numberwidth=4           " width of numbers line
set showmatch               " show matching
set ignorecase              " search case insensitive
set hlsearch                " highlight search
set incsearch               " incremental search
set autoindent              " indent a new line the same amount as the line just typed
set cursorline              " highlight current cursorline
" set cc=80                   " set an 80 column border for good coding style
" set ttyfast                 " Speed up scrolling in Vim

" Sensible Pane Split Behavior
set splitright
set splitbelow

" Menu Things
set wildmenu
set wildmode=longest:full,full
" set clipboard=unnamedplus   " using system clipboard

" --- Coc Config ----
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-solargraph',
  \ 'coc-explorer',
  \ 'coc-prettier',
  \ 'coc-eslint',
  \ 'coc-json',
  \ ]
nmap <space>e <Cmd>CocCommand explorer<CR>

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Prettier things
vmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument


" --- NERDTree Config ----
let NERDTreeIgnore=['.DS_Store']
let NERDTreeShowBookmarks=1         "show bookmarks on startup
let NERDTreeHighlightCursorline=1   "Highlight the selected entry in the tree
map <leader>nt :NERDTreeToggle<CR>

" --- fzf Config ----
nnoremap <C-p> :GFiles<Cr>
nnoremap <C-o> :BLines<Cr>


" --- TypeScript Syntax Config ----
autocmd BufNewFile,BufRead *.tsx, set filetype=typescriptreact

" --- Minimap Config ----
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
map <leader>mm :MinimapToggle<CR>
