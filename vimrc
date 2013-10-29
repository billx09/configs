set fileformat=unix
set encoding=utf-8
set number
syn on
set nocompatible
set shiftwidth=4
set tabstop=4
set nowrapscan
set ignorecase
set expandtab
set showtabline=2
set foldmethod=marker
set hlsearch
filetype plugin on

set mouse=a

" autocommads on php files
set complete=.,w,b,u,t,i,k~/.vim/syntax/php.api
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
source ~/.vim/plugin/word_complete.vim
source ~/.vim/plugin/comments.vim
call DoWordComplete() 

" <Leader> is "\"... but on azerty keyboard it better to use "," wich is more accessible
:let mapleader = ","

"Use Project"
runtime! ~/.vim/plugin/Project.vim


" Create tags with '\1' command
function! Phptags()    
    "change exclude for your project, here it's a good exclude for Copix temp and var files"
    let cmd = '!ctags -f .tags -h ".php" -R --exclude="\.svn" --exclude="./var" --exclude="./temp" --totals=yes --tag-relative=yes'
    exec cmd
    set tags=.tags
endfunction
:let g:proj_run1='call Phptags()'

"to remap \1 on ,1
nmap ,1 \1

" F9 will do a PHP lint !
set makeprg = "php -l %"
nmap <F9> :make<ENTER>:copen<ENTER><CTRL>L


" \2 on project view will svn update current directory
:let g:proj_run2='!svn ci %R'

" \5 on project view will commit current directory
:let g:proj_run5='!svn up %R'

"Latex option
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'
" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
"set sw=2
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:
