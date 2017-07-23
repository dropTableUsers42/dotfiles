set nocompatible

filetype plugin indent on
syntax enable
set number
set relativenumber

"colorscheme
set background=dark
set t_Co=256
let g:solarized_termcolors=16
let g:solarizedterm_trans=1
colorscheme solarized
set term=xterm-256color
highlight SignColumn ctermbg=8

"buffers
set hidden
set confirm

"search
set hlsearch
set ignorecase
set smartcase
set incsearch

"Ctrl-D
set wildmenu
set wildmode=longest:full,full
set showcmd
set cmdheight=2

"some sane setting
set nostartofline
set nopaste
set pastetoggle=<f11>
set backspace=2

"Indentations
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

"colorcolumn
set colorcolumn=80

"splits
set splitbelow
set splitright

"Cursor
let &t_SI.="\e[6 q"
let &t_EI.="\e[2 q"
autocmd VimEnter * silent !echo -ne "\e[2 q"
set cursorline

"remove beep (errorbell)
set noerrorbells visualbell t_vb=
autocmd VimEnter * set visualbell t_vb=

"Hotkeys
let mapleader = ","

imap ;; <Esc>
nmap ;; i
inoremap ;, ;
nnoremap ; :
imap <Leader>, <Esc>$ka
imap <Leader>{ {<Esc>$ka
map <F9> :TagbarToggle<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

autocmd filetype cpp nnoremap <F4> :make<CR>

"vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_solarized_bg='dark'
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = ''
let g:airline#extensions#tabline#buffer_nr_show = 1

"netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_altv = 1

"ag-silver-searcher
if executable('ag')
	" Use ag over grep
	set grepprg=ag\ --nogroup\ --nocolor

	"Use ag in CtrlP for listing files
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

	let g:ctrlp_use_caching = 0
endif

"Ack
if executable('ag')
	let g:ackprg = 'ag --vimgrep'
endif

"indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 10
let g:indent_guides_indent_levels = 30
let g:indent_guides_start_level = 2
autocmd VimEnter * highlight IndentGuidesEven ctermbg=241

"guten-tags
let g:gutentags_project_root = ['tags']
autocmd User GutentagsUpdated :redraw!

"syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"Plug
call plug#begin('$HOME/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'dahu/vim-help'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'jiangmiao/auto-pairs'

call plug#end()
