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
" %F%m%r%h = Full path, modified flag, read-only flag, help flag
" %y = File type
" %w = Preview flag
" %= = Right align
" %-4l = Current line, padded to 4 characters
" %-4L = Total lines, padded to 4 characters
" %-3c = Current column, padded to 3 characters
" %P = Position in file
set statusline=\ %F%m%r%h\ %y\ %w\ \ CWD:\ %{getcwd()}\ %=Line:\ %-4l\/%-4L\ \ Col:\ %-3c\ \ %P

" Highlight the 81st character on a line
highlight ColorColumn ctermbg=darkred
call matchadd('ColorColumn', '\%81v', 100)

" Highlight EOL whitespace, but not when typing at the end of a line
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+\%#\@<!$/
:au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
:au InsertLeave * match ExtraWhitespace /\s\+$/
