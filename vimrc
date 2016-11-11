" $ git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" vim
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

" Disable at 2016-03-21
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
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
autocmd BufRead,BufNewFile *.t set filetype=perl
autocmd BufRead,BufNewFile {*.md,*.mkd,*.markdown} set filetype=markdown
autocmd BufRead,BufNewFile {COMMIT_EDITMSG} set filetype=gitcommit

imap <C-J> <C-W>j
imap <C-K> <C-W>k
imap <C-H> <C-W>h
imap <C-L> <C-W>l

set history=256
set encoding=utf-8
set ignorecase
set incsearch
set showcmd
set wildmenu
set wildmode=list:longest,full
" set number
set relativenumber

set shiftwidth=4
set tabstop=4
set smarttab
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

set autoindent
set smartindent
set showmatch
set ruler
set nohls
let loaded_matchparen = 1

"Plugin 'tomasr/molokai'
"colorscheme molokai
Plugin 'dfxyz/CandyPaper.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'endel/vim-github-colorscheme'
set background=dark
"colorscheme solarized
Plugin 'jpo/vim-railscasts-theme'
colorscheme railscasts

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

" Bundle "https://github.com/Lokaltog/vim-powerline.git"
Bundle 'https://github.com/ervandew/supertab.git'
Bundle 'chrisgillis/vim-bootstrap3-snippets'

" Searching
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'a'
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)\|logs\|public\|node_modules\|DS_Store$'

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)\|logs\|temp$',
  \ 'file': '\v\.(exe|so|dll|png|jpg|jpeg|tiff|bmp)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX

let g:trlp_user_command = 'find %s -type f'        " MacOSX/Linux


" Syntax
Plugin 'jelera/vim-javascript-syntax'
Plugin 'elzr/vim-json'
Plugin 'groenewege/vim-less'

let g:ycm_use_ultisnips_completer=1
let g:ycm_min_num_of_chars_for_completion = 3

let g:ycm_semantic_triggers =  {
            \   'c' : ['->', '.'],
            \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
            \             're!\[.*\]\s'],
            \   'ocaml' : ['.', '#'],
            \   'cpp,objcpp' : ['->', '.', '::'],
            \   'perl' : ['->', '::'],
            \   'php' : ['->', '::'],
            \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
            \   'ruby' : ['.', '::'],
            \   'lua' : ['.', ':'],
            \   'erlang' : [':'],
            \ }

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

Bundle 'Raimondi/delimitMate'
" for python docstring ", 特别有用
au FileType python let b:delimitMate_nesting_quotes = ['"']
" 关闭某些类型文件的自动补全
"au FileType mail let b:delimitMate_autoclose = 0

" 快速注释 http://www.wklken.me/posts/2015/06/07/vim-plugin-nerdcommenter.html
" ,cc 注释 ,cu 取消注释
Bundle 'scrooloose/nerdcommenter'
" 注释的时候自动加个空格, 强迫症必配
let g:NERDSpaceDelims=1

" 括号自动匹配高亮
Bundle 'kien/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
            \ ['brown',       'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ['darkgray',    'DarkOrchid3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['brown',       'firebrick3'],
            \ ['gray',        'RoyalBlue3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue',    'firebrick3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['darkred',     'DarkOrchid3'],
            \ ['red',         'firebrick3'],
            \ ]

" 不加入这行, 防止黑色括号出现, 很难识别
" \ ['black',       'SeaGreen3'],
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" MATCHIT[成对标签跳转]
Bundle 'vim-scripts/matchit.zip'

" Disable F1 help
map <F1> <Esc>
imap <F1> <Esc>
nmap <F1> <Esc>

set dictionary+=/usr/share/dict/words

" add on 2015-11-21
Bundle 'mxw/vim-jsx'
let g:jsx_ext_required = 0

" vim-react-snippets:
Bundle "justinj/vim-react-snippets"

" SnipMate and its dependencies:
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"

" 2015-12-03
Plugin 'mattn/emmet-vim'
let g:user_emmet_install_global = 0
autocmd FileType html,css,tt EmmetInstall
let g:user_emmet_leader_key='<tab>'

Plugin 'Chiel92/vim-autoformat'
noremap <F3> :Autoformat<CR>

" 2015-12-24
set hlsearch

Bundle "https://github.com/danro/rename.vim.git"
Bundle "https://github.com/vim-scripts/TagHighlight.git"
Bundle "https://github.com/vim-scripts/taglist.vim.git"

" 2016-04-21
Bundle "https://github.com/keith/swift.vim.git"

" 2016-07-12  Todo
Bundle "http://github.com/freitass/todo.txt-vim.git"

" Dash
Plugin 'rizzatti/dash.vim'

hi Normal  ctermfg=252 ctermbg=none

" tagbar for vim  2016-11-01
Bundle 'https://github.com/majutsushi/tagbar.git'
nmap <F9> :TagbarToggle<CR>

" fix edit crontab issue
if $VIM_CRONTAB == "true"
    set nobackup
    set nowritebackup
endif


" 2016-11-11
Bundle "https://github.com/tpope/vim-rails.git"
Bundle "https://github.com/vim-ruby/vim-ruby.git"

" sass highlight
Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'isRuslan/vim-es6'
