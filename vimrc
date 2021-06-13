"""""""""""""""
" indentation "
"""""""""""""""
set tabstop=4
set shiftwidth=4
set smartindent
set expandtab
set smarttab

""""""""""
" design "
""""""""""
" let g:gruvbox_contrast_dark='hard'
" let g:gruvbox_termcolors=16
" silent colorscheme gruvbox
" colo gruvbox
colorscheme gruvbox
set term=xterm-256color
set termguicolors  " help in some cases, but make worse in other
syntax enable
set background=dark
set number
set cursorline
set list
set listchars=trail:·
set colorcolumn=80
set wildmenu wildmode=longest,list " Unix-like tab behaviour

"""""""""""""""""""""
" hot keys settings "
"""""""""""""""""""""
set backspace=indent,eol,start

"""""""""""""""""
" YouCompleteMe "
"""""""""""""""""
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

""""""""""""""""
" Syntastic    "
""""""""""""""""
let g:syntastic_python_python_exec = 'python3'
