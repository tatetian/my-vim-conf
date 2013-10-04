set ruler
set nocompatible
syntax enable
set tabstop=2
set shiftwidth=2
set smartindent
set expandtab
set fileencodings=utf8,gbk
set backspace=indent,eol,start
autocmd Filetype c set omnifunc=ccomplete#Complete
autocmd Filetype cpp set omnifunc=cppcomplete#Complete

filetype plugin on
set shellslash
set grepprg=grep\ -nH\ $*
filetype indent on

" Force term to use 256 color instead of 16 colors
" Thus color schema look same in gvim or terminal
set t_Co=256
" Nice color from TextMate
colorscheme molokai
let g:molokai_original = 1
"let g:rehash256 = 1
set background=dark
"transparent background
hi Normal ctermbg=NONE

set mouse=a

set runtimepath+=/usr/share/vim/addons

set colorcolumn=80

set number

nnoremap <S-h>  :tabprev<CR>
nnoremap <S-l>  :tabnext<CR>

" Use patheogen to manage vim plugins
call pathogen#infect() 

" Install excuberant ctags first!
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
let Tlist_WinWidth = 40
let Tlist_Exit_OnlyWindow = 1 
map <F4> :TlistToggle<cr>
map <F8> :!/usr/local/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" Install smooth scroll plugin 
" https://github.com/terryma/vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 15, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 15, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 4)<CR>

" For gvim
set gfn=Menlo:h14
set guifont=Menlo:h14
set linespace=3
