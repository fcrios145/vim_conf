set nocompatible              " be iMproved, required

filetype off" required
let mapleader = ","
set number
set t_Co=256
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html

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
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
Plugin 'tacahiroy/ctrlp-funky'
set laststatus=2
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
nmap <leader>l :bnext<CR>
"
" " Move to the previous buffer
nmap <leader>h :bprevious<CR>
"
" " Close the current buffer and move to the previous one
" " This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
"
" " Show all open buffers and their status
nmap <leader>bl :ls<CR>

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

Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'

colorscheme molokai 

nnoremap <space>ga :Git add %:p<CR><CR>
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
nnoremap <space>gb :Git branch<Space>
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


Plugin 'rking/ag.vim'
Plugin 'matze/vim-move'
let g:move_key_modifier = 'C'
let g:airline_theme='badwolf'
