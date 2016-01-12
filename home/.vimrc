call pathogen#infect()
syntax on
syntax enable
set shiftwidth=2 tabstop=2 expandtab
set autoindent
"set mouse=a
let g:rehash256 = 1
let g:vim_markdown_folding_disabled=1

let mapleader=","

colorscheme badwolf

filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
:imap jj <Esc>

au BufNewFile,BufRead *.go setf go
augroup go
  let g:go_fmt_command = "goimports"
augroup END

set hidden
set ignorecase smartcase

"move between splits with Ctrl + HJKL
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" clear search highlight
nnoremap <space><space> :nohlsearch<CR>

set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

" tree undo
nnoremap U :GundoToggle<CR>

" open ag.vim
nnoremap <leader>a :Ag

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" badwolf specific
let g:badwolf_darkgutter = 1

" clear background color (bug)
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

