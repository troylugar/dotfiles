" plugins {{{
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
Plug 'fladson/vim-kitty'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " requires `fzf` install
Plug 'junegunn/vim-easy-align'
Plug 'ludovicchabant/vim-gutentags'
Plug 'Mofiqul/vscode.nvim'
" Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " requires nvim 0.9+ gcc, g++
Plug 'prettier/vim-prettier'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'universal-ctags/ctags' " requires ctags
Plug 'yggdroot/indentline'
call plug#end()
" }}}

" theme {{{
set background=dark
" colorscheme gruvbox
colorscheme vscode
" }}}

" airline {{{
let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline_powerline_fonts = 1
" }}}

" indentline {{{
"" Set indent line color (indentline)
let g:indentLine_setColors = 0
"" Set indent line character (indentline)
let g:indentLine_char = '▏'
" }}}

" NERDTree {{{
let g:NERDTreeWinSize = 60
" }}}

" keymapping {{{
"" Easier saving
nnoremap <C-S> :w<CR>

"" FZF keyboard shortcuts
nnoremap <C-P> :FZF<CR>

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
"" Meta key too
nnoremap <M-S-H> :vertical resize -1<CR>
nnoremap <M-S-J> :resize -1<CR>
nnoremap <M-S-K> :resize +1<CR>
nnoremap <M-S-L> :vertical resize +1<CR>

"" Easier splits
nnoremap “ :spl<CR>                " “ = <Option-[> for mac
nnoremap ‘ :vspl<CR>               " ‘ = <Option-]> for mac
"" Meta key too
nnoremap <M-[> :spl<CR>
nnoremap <M-]> :vspl<CR>
" }}}

" settings {{{
"" Splits
set splitbelow
set splitright

"" Line behavior
set relativenumber " Show line numbers
set linebreak " Break lines at word (requires Wrap lines)
set nu " Current line has current line number
set showbreak=+++ " Wrap-broken line prefix
set textwidth=120 " Line wrap (number of cols)
set showmatch " Highlight matching brace
set visualbell " Use visual bell (no beeping)
set cursorline " Hightlight current line

"" Search behavior
set hlsearch " Highlight all search results
set smartcase " Enable smart-case search
set ignorecase " Always case-insensitive
set incsearch " Searches for strings incrementally
" :noh => clears search highlights

"" Indent Behavior
set autoindent " Auto-indent new lines
set expandtab " Use spaces instead of tabs
set shiftwidth=2 " Number of auto-indent spaces
set smartindent " Enable smart-indent
set smarttab " Enable smart-tabs
set softtabstop=2 " Number of spaces per Tab

"" Fold Behavior
set foldmethod=marker

"" Misc
set ruler " Show row and column ruler information
set undolevels=1000 " Number of undo levels
set backspace=indent,eol,start " Backspace behaviour
set scrolloff=5 " Scrolls at the offset, not at the end of the file
set colorcolumn=120
"}}}

" autocmds {{{
autocmd BufWinLeave *.txt mkview
autocmd BufWinEnter *.txt silent loadview
autocmd VimEnter * GitGutterEnable
autocmd VimEnter * highlight link GitGutterChangeLine DiffText
autocmd VimEnter * GitGutterLineNrHighlightsEnable
" autocmd VimEnter * GitGutterLineHighlightsEnable
autocmd BufWritePost * GitGutterEnable
"}}}

" lua scripts {{{
" treesitter config {{{
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
EOF
" }}}
" }}}
