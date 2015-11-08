" $ git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" $ vim
" :BundleInstall

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Track the engine.
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Track the snipmate
"Bundle 'chunzi/snipmate.vim'
"nmap <silent> <Leader>rs :call ReloadAllSnippets()
" Autocomplete
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.

" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

syntax on
filetype plugin indent on

let mapleader=","
autocmd BufRead,BufNewFile *.tt set filetype=html
autocmd BufRead,BufNewFile {*.md,*.mkd,*.markdown} set filetype=markdown
autocmd BufRead,BufNewFile {COMMIT_EDITMSG} set filetype=gitcommit

map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

set history=256
set encoding=utf-8
set ignorecase
set incsearch
set showcmd
set wildmenu
set wildmode=list:longest,full
set number

set shiftwidth=4
set tabstop=4
set smarttab
set smartindent 
set expandtab

set laststatus=2
set statusline= 
set statusline+=%-3.3n\                      " buffer number 
set statusline+=%f\                          " filename 
set statusline+=%h%m%r%w                     " status flags 
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type 
set statusline+=%=                           " right align remainder 
set statusline+=0x%-8B                       " character value 
set statusline+=%-14(%l,%c%V%)               " line, character 
set statusline+=%<%P                         " file position 

let loaded_matchparen = 1
colorscheme desert

"-----------------------------------------------------
" Bundle 'chunzi/minibufexpl.vim'
" let g:miniBufExplMapWindowNavVim = 1
" let g:miniBufExplMapWindowNavArrows = 1
" let g:miniBufExplMapCTabSwitchBufs = 1
" let g:miniBufExplModSelTarget = 1 

Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-surround'

Bundle 'mru.vim'
nmap <silent> <Leader>rr :MRU<CR>

Bundle 'tComment'
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

nmap ,, :%!perltidy<CR>
nmap <silent> <leader>so :so $MYVIMRC<CR>

map <leader>n :NERDTreeToggle<CR>

noremap <F7> gT
noremap <F8> gt

" dont pop up preview window, ycm is enough
set completeopt-=preview

" backspace stuff
set backspace=indent,eol,start

" use system clipboard on mac
set clipboard=unnamed

Bundle "https://github.com/Lokaltog/vim-powerline.git"
Bundle 'https://github.com/ervandew/supertab.git'
Bundle 'chrisgillis/vim-bootstrap3-snippets'


" Searching
Plugin 'kien/ctrlp.vim'

" Syntax
Plugin 'jelera/vim-javascript-syntax'
Plugin 'elzr/vim-json'
Plugin 'groenewege/vim-less'

let g:ycm_use_ultisnips_completer=1

" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsUsePythonVersion=2
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" make YCM compatible with UltiSnips (using supertab)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
