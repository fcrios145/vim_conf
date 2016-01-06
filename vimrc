set nocompatible              " be iMproved, required

filetype off " required
let mapleader = ","
"set number
set t_Co=256
syntax on

"set noswapfile
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
set updatetime=750

set mouse=a
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
"set relativenumber
set number
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
noremap <Leader>s :update<CR>

set wrap
set textwidth=79
set formatoptions=qrn1
"set colorcolumn=150

" select a word with space only
"map <space> viw

" Delete a line in insert mode and go back to insert mode
inoremap <c-d> <esc>d$i

" Dont use the arrow keys plax
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Deactivate F1 key, it is to annoying
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Save on losing focus
au FocusLost * :wa

" Reselect pasted text
nnoremap <leader>v V`]

" Rehard wrap paragraph of text
nnoremap <leader>q gqip

" Open vimrc on the fly in a new vertical split
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
" Source vimrc file, reload..
nnoremap <leader>sv :source $MYVIMRC<cr>

" Escape without escape key instead do it pressing j twice
inoremap jj <ESC>

" Create new vertical split and switch over it
nnoremap <leader>tw <C-w>v<C-w>l

" Move in splits easily
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Fast search text in files with Ag
nnoremap <leader>a :Ag
nnoremap <F5> :UndotreeToggle<cr>
nnoremap <F8> :NERDTreeToggle<cr>

"nmap <leader>m :NERDTreeToggle <CR>

"set list
"set listchars=tab:▸\ ,eol:¬

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required


" The following are examples of different formats supported.
Plugin 'evidens/vim-twig'
Plugin 'michalliu/sourcebeautify.vim'
Plugin 'mhinz/vim-startify'
Plugin 'kien/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mkarmona/colorsbox'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'chase/vim-ansible-yaml'
Plugin 'stephpy/vim-yaml'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'Lokaltog/powerline'
Plugin 'mbbill/undotree'
"Plugin 'Shougo/vimproc'
Plugin 'Shougo/unite.vim'
Plugin 'rking/ag.vim'
Plugin 'matze/vim-move'
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter'
Plugin 'Yggdroot/indentLine'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'nanotech/jellybeans.vim'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"set laststatus=2
set runtimepath^=~/.vim/bundle/ctrlp.vim

nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" This allows buffers to be hidden if you've modified a buffer.
" " This is almost a must if you wish to use buffers in this way.
set hidden
"
" " To open a new empty buffer
" " This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>
"
" " Move to the next buffer
nnoremap <leader>h :bprevious<CR>
nnoremap <leader>l :bnext<CR>
map <Leader>ml <Plug>(easymotion-lineforward)
map <Leader>mh <Plug>(easymotion-linebackward)
"
" " Move to the previous buffer

"
" " Close the current buffer and move to the previous one
" " This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
"
" " Show all open buffers and their status
nmap <leader>bl :ls<CR>
nmap <leader>m :NERDTreeToggle <CR>

" Setup some default ignores
 let g:ctrlp_custom_ignore = {
   \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
    \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
    \}
"
"     " Use the nearest .git directory as the cwd
"     " This makes a lot of sense if you are working on a project that is in
"     version
"     " control. It also supports works with .svn, .hg, .bzr.
     let g:ctrlp_working_path_mode = 'r'
"
"     " Use a leader instead of the actual named binding
     nmap <leader>p :CtrlP<cr>
"
"     " Easy bindings for its various modes
     nmap <leader>bb :CtrlPBuffer<cr>
     nmap <leader>bm :CtrlPMixed<cr>
     nmap <leader>bs :CtrlPMRU<cr>



nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gb :Gblame<CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
"nnoremap <space>gb :Git branch<Space>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>

" Tab madness
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

nmap <leader>bl :ls<CR>I
nmap <leader>w  :bw<CR>
nmap <leader>W  :bw!<CR>


let g:move_key_modifier = 'C'
let g:airline_theme='solarized'


colorscheme solarized

"function! Multiple_cursors_before()
    "exe 'NeoCompleteLock'
    "echo 'Disabled autocomplete'
"endfunction

function! Multiple_cursors_after()
    exe 'NeoCompleteUnlock'
    echo 'Enabled autocomplete'
endfunction

set ttyfast " u got a fast terminal
set ttyscroll=3
set lazyredraw " to avoid scrolling problems
set synmaxcol=512

" Easy motion searches
" Gif config
nmap s <Plug>(easymotion-s)
nmap t <Plug>(easymotion-t)

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
set clipboard=unnamed


" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1

" Looper buffers
"let g:buffergator_mru_cycle_loop = 1

" Go to the previous buffer open
nmap <leader>h :BuffergatorMruCyclePrev<cr>

" Go to the next buffer open
nmap <leader>l :BuffergatorMruCycleNext<cr>

" View the entire list of buffers open
nmap <leader>bl :BuffergatorOpen<cr>

" Shared bindings from Solution #1 from earlier
nmap <leader>T :enew<cr>
nmap <leader>bq :bp <BAR> bd #<cr>


nnoremap x "_x
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d

nnoremap <leader>d ""d
nnoremap <leader>D ""D
vnoremap <leader>d ""d
let g:neocomplete_disable_auto_complete = 1
"e ++ff=dos

set pastetoggle=<F2>

let c = 1
while c <= 99
  execute "nnoremap " . c . "gb :" . c . "b\<CR>"
  let c += 1
endwhile

let g:airline_powerline_fonts = 1


set wildchar=<Tab> wildmenu wildmode=full
set wildcharm=<C-Z>
nnoremap <F10> :b 
let g:EclimCompletionMethod = 'omnifunc'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-w>"
let g:UltiSnipsJumpBackwardTrigger="<c-e>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

let g:startify_session_persistence = 1
