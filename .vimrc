call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

"" Theme
colorscheme gruvbox
let g:airline_theme='base16_gruvbox_dark_hard'

"" Easier saving
nnoremap <C-S> :w<CR>

"" NERDTree keyboard shortcuts
nnoremap <C-T> :NERDTreeToggle<CR>
nnoremap <C-F> :NERDTreeFind<CR>

"" Easier navigation
nnoremap ˙ <C-W><C-H>              " ˙ = <Option-H> for mac
nnoremap ∆ <C-W><C-J>              " ∆ = <Option-J> for mac
nnoremap ˚ <C-W><C-K>              " ˚ = <Option-K> for mac
nnoremap ¬ <C-W><C-L>              " ¬ = <Option-L> for mac
"" Meta key too
nnoremap <M-h> <C-W><C-H>
nnoremap <M-j> <C-W><C-J>
nnoremap <M-k> <C-W><C-K>
nnoremap <M-l> <C-W><C-L>

"" Easier resizes
nnoremap Ó :vertical resize -1<CR> " Ó = <Shift-Option-H> for mac
nnoremap Ô :resize -1<CR>          " Ô = <Shift-Option-J> for mac
nnoremap  :resize +1<CR>          "  = <Shift-Option-K> for mac
nnoremap Ò :vertical resize +1<CR> " Ò = <Shift-Option-L> for mac
nnoremap <S-M-H> :vertical resize -1<CR>
nnoremap <S-M-J> :resize -1<CR>

""Easier splits
nnoremap “ :spl<CR>                " “ = <Option-[> for mac
nnoremap ‘ :vspl<CR>               " ‘ = <Option-]> for mac

"" Regular settings
set splitbelow
set splitright

"" Line behavior
set relativenumber " Show line numbers
set linebreak " Break lines at word (requires Wrap lines)
set nu " Current line has current line number
set showbreak=+++ " Wrap-broken line prefix
set textwidth=100 " Line wrap (number of cols)
set showmatch " Highlight matching brace
set visualbell " Use visual bell (no beeping)
set cursorline " Hightlight current line

"" Search behavior
set hlsearch " Highlight all search results
set smartcase " Enable smart-case search
set ignorecase " Always case-insensitive
set incsearch " Searches for strings incrementally

"" Indent Behavior
set autoindent " Auto-indent new lines
set expandtab " Use spaces instead of tabs
set shiftwidth=2 " Number of auto-indent spaces
set smartindent " Enable smart-indent
set smarttab " Enable smart-tabs
set softtabstop=2 " Number of spaces per Tab

"" Misc
set ruler " Show row and column ruler information
set undolevels=1000 " Number of undo levels
set backspace=indent,eol,start " Backspace behaviour
set scrolloff=5 " Scrolls at the offset, not at the end of the file
set colorcolumn=80
