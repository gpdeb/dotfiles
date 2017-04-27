" Syntax highlighting
syntax on

" UTF-8 encoding
set encoding=utf8

" Unix file type
set ffs=unix

" Use spaces instead of tabs
set expandtab
set smarttab

" 1 tab = 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent
set smartindent

" Show line numbers
set number

set showmatch

" Always show status line
set laststatus=2

" Format status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Highlight the 81st character on a line
highlight ColorColumn ctermbg=darkred
call matchadd('ColorColumn', '\%81v', 100)

" Highlight EOL whitespace, but not when typing at the end of a line
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+\%#\@<!$/
:au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
:au InsertLeave * match ExtraWhitespace /\s\+$/
