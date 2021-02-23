" Use Vim settings, rather then Vi settings (much better!).
set nocompatible
set encoding=utf-8

" Default configuration in case there's no other definition in ftplugin
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set smartindent
set autoindent
syntax on

" Persistent undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set number

set wildignore=*.o,*~,*.pyc,*.swp

" Use the old regex engine, so ruby syntax highlighting will be faster
set re=1

" Paste behaviour
set paste

" status line
set laststatus=2
set linespace=0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Enable filetype plugins "
filetype plugin on

" Disable preview code when using omni complete"
set completeopt=menu

" Allow modelines
set modelines=1

set spelllang=en,pt_br

" force vim to use 265 colors
set term=xterm-256color

" Set column and line highlight
set cursorline

" Colors
set background=dark
colorscheme PaperColor

" Airline
let g:airline_theme = 'papercolor'
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1

" Keep git sign column as default (+, -, ~, etc.)
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_max_signs = 10000
set updatetime=100

" vim markdown settings
let g:vim_markdown_folding_disabled=1

let g:netrw_liststyle=3
let g:netrw_chgwin=2
let g:netrw_sort_sequence = '[\/]$,*'
let g:netrw_banner = 0
let g:netrw_winsize = -28
let g:netrw_list_hide= '.*\.swp$'

" uses ag with ctrl-p
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_eruby_ruby_quiet_messages =
	\ {'regex': 'possibly useless use of % in void context'}

" also uses ag over grep
set grepprg=ag\ --nogroup\ --nocolor

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

" Custom extensions
autocmd BufNewFile,BufRead *.es6 set syntax=javascript

" mappings
map <c-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
