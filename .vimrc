"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                             "
"                                MY VIMRC FILE                                "
"                                                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               General Settings                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible 						"Required
filetype off							"Required
syntax on
set encoding=utf-8

" Remap <leader> key
let mapleader=','

" Line numbers
set number
set relativenumber
set colorcolumn=80
set statusline=%F
set cursorline
set showmatch
set nowrap

" Disable backup files
set nobackup
set nowritebackup
set noswapfile
set showcmd " Enable folding
set foldmethod=indent
set foldlevel=99

" Buffer split settings
set splitbelow
set splitright

" Make python code look pretty
let python_highlight_all=1

" Show the docstring for folded code
let g:SimpylFold_docstring_preview=1

" Close auto-complete window when done
let g:ycm_autoclose_preview_window_after_completion=1

" Jinja2 Syntax Highlighting
au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja

" PEP8 indentation
au BufNewFile,BufRead *.py,.c,.cpp
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=79 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix |

au BufNewFile,BufRead *
    \ set tabstop=4 |
    \ set autoindent |
	\ set expandtab |

" Indentation for fullstack
au BufNewFile,BufRead *.js,*.html,*.css,*.scss
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set shiftwidth=2 |
	\ set expandtab

let g:indentLine_color_term=239
let g:kolor_italic=1
let g:kolor_bold=1
let g:kolor_underlined=0
let g:kolor_alternative_matchparen=0


" Javascript syntax highlighting
let javascript_enable_domhtmlcss=0
let b:javascript_fold=1
let javascript_ignore_javaScriptdoc=0



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         Nerdtree Settings			                          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NERDTree auto startup
" autocmd vimenter * NERDTree

" move nerdtree to the right
" let g:NERDTreeWinPos = "right"

" Hide Pycache files from NERDTree
let NERDTreeIgnore = ['\.pyc$', '__pychache__']



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        Trailing Whitespace Settings                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fun! TrimWhitespace()
	let l:save_cursor = getpos('.')
	%s/\s\+$//e
	call setpos('.', l:save_cursor)
endfun

command! TrimWhitespace call TrimWhitespace()



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Powerline Settings                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use python 2.7 for install, this helps with compatibility issues
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

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

" powerline startup
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Vundle Settings                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set the runtime path to include Vundle and initailize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage itself:
Plugin 'gmarik/Vundle.vim'

" Just a shitload of colour schemes
Plugin 'flazz/vim-colorschemes'

" Main vundle plugins
Plugin 'tmhedberg/SimpylFold'					" Improved Folding
Plugin 'vim-scripts/indentpython.vim'			" Indent Python Improved
Plugin 'scrooloose/syntastic'					" Syntax Checking/Highlighting
Plugin 'scrooloose/nerdtree'					" It's Nerdtree
Plugin 'nvie/vim-flake8'						" Add PEP8 Checking
Plugin 'sickill/vim-monokai'					" Monokai
Plugin 'Yggdroot/indentLine'					" Indent Guides
Plugin 'lepture/vim-jinja'						" Jinja Syntax Highlighting
" Plugin 'valloric/YouCompleteMe'

call vundle#end()								" Required
filetype plugin indent on 						" Required



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Remap Keybindings                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-K> <C-W><C-K>

" Enable folding with spacebar
nnoremap <space> za

" Bind NERDTreeToggle
noremap <C-n> :NERDTreeToggle<CR>

" Bind nohl
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

noremap <leader>w :call TrimWhitespace()<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Themes Settings                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set t_Co=256
syntax enable
set background=dark
colorscheme kolor



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     Auto source .vimrc file after write                     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

