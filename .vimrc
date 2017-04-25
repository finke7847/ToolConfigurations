set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" A plugin for making quoting/parenthesizing simple.
Plugin 'tpope/vim-surround'

" Molokai color shceme for vim.
Plugin 'tomasr/molokai'

" Lean & mean status/tabline for vim that's light as air.
Plugin 'bling/vim-airline'

" Theme of airline.
Plugin 'vim-airline/vim-airline-themes'

" Patched font for PowerLine user
Plugin 'powerline/fonts'

"A colorful, dark color shceme for Vim.
Plugin 'nanotech/jellybeans.vim'

" Precision colorscheme for Vim
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"------------------------------
" Plugin Configuration
"------------------------------

" Airline configuration
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1 " Enable automatic population of the g:airline_symbols dictionary with powerline symbols.
let g:airline_detect_modified = 1 " Enable moidfied detection
let g:airline#extension#whitespace#enabled = 1 " Enable detection of whitespace errors.
let g:airline#extension#hunks#enabled = 0 " Disable showing a summary of changed hunks under source control

"------------------------------
" Regual Vim Configuration
"------------------------------

"----------
" Color
"----------
syntax enable
set background=dark
colorscheme solarized
" Force 256 color mode if available
if $TERM =~ '-256color'
	set t_Co=256
endif

"----------
" Font
"----------
set guifont=Source_Code_Pro:h12

"----------
" UI
"----------
set ruler          " Ruler on
set number         " Line numbers on
set nowrap         " Line wrapping off
set laststatus=2   " Always show the statusline
set cmdheight=1    " Make the command area two lines high
set cursorline     " Highlight current line
set encoding=utf-8
set noshowmode     " Don't show the mode since Powerline shows it
set title          " Set the title of the window in the terminal to the file

set guioptions-=L  " Hide left scroll bar
set guioptions-=r  " Hide right scroll bar

"----------
" Searching
"----------
set ignorecase " Case insensitive searching
set smartcase  " Non-case sesitive searching
set hlsearch   " Highlight search results

"----------
" Mouse
"----------
set mousehide " Hide mouse after typying
