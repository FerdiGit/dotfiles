"""""""""""""""""""""
"                   "
"                   "
"   MY VIMRC FILE   "
"                   "
"                   "
"""""""""""""""""""""

set nocompatible              " be iMproved, required
set encoding=utf-8
set t_Co=256

"Use python 2.7 for install, this helps with compatibility issues
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

"general settings
set tabstop=3
set softtabstop=3
set shiftwidth=3
set linespace=3
set autoindent
set number
set showcmd
set cursorline
set wildmenu
set showmatch
set foldenable
set ruler
set noswapfile
set nobackup		"Those pesky backup and
set nowritebackup	"temp files grrrr
set statusline=%F
set list lcs=tab:\|\ ,eol:¬

"Powerline Settings
set laststatus=2
if !exists('g:airline_symbols')
	    let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

set guifont=Liberation\ Mono\ for\ Powerline\ 10
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_detect_modified=1
let g:airline_detect_paset=1
let g:airline_detect_crypt=1
let g:airline_detect_iminsert=0

let g:airline_theme_patch_func = 'AirlineThemePatch'

"Relative line numbers function
function! NumberToggle()
	if(&relativenumber == 1)
		set number
	else
		set relativenumber
	endif
endfunc

"Badwolf theme colour support
function! AirlineThemePatch(palette)
	if g:airline_theme == 'badwolf'
		for colors in values(a:palette.inactive)
			let colors[3] = 245
		endfor
	endif
endfunction

filetype plugin indent on
filetype indent on
syntax on

"remaps
map <C-n> :NERDTreeToggle<CR>
nmap <leader>l :set list!<CR>
nnoremap <C-m> :call NumberToggle()<cr>
let mapleader = ","

" start vundler
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage itself:
Plugin 'gmarik/Vundle.vim'

" Just a shitload of colour schemes
Plugin 'flazz/vim-colorschemes'

" core plugins
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-markdown'
Plugin 'groenewege/vim-less'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/MatchTagAlways'
Plugin 'crusoexia/vim-monokai'
Plugin 'crusoexia/vim-javascript-lib'
Plugin 'ntpeters/vim-better-whitespace'

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"powerline startup
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
"Pathogen start-up
execute pathogen#infect()

"NERDTree Auto startup
autocmd vimenter * NERDTree
let g:NERDTreeWinPos = "right"

"Javascript syntax highlighting
let javascript_enable_domhtmlcss=0
let b:javascript_fold=1
let javascript_ignore_javaScriptdoc=0

"colorscheme
syntax enable
set background=dark
colorscheme monokai

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

