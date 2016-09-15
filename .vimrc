set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set exrc
set secure

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set number

highlight ColorColumn ctermbg=blue
call matchadd('ColorColumn', '\%81v', 100)

augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.h, *.c set filetype=c.doxygen
augroup END

"let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_enable_diagnostic_signs = 0

nnoremap ; :
nnoremap : ;

vmap  <expr>  <LEFT>   DVB_Drag('left')  
vmap  <expr>  <RIGHT>  DVB_Drag('right') 
vmap  <expr>  <DOWN>   DVB_Drag('down')  
vmap  <expr>  <UP>     DVB_Drag('up')    
vmap  <expr>  D        DVB_Duplicate()   
let g:DVB_TrimWS = 1
