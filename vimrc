" Basic setup

set nocompatible      " Use vim, no vi defaults
set ruler             " Show line and column number
syntax enable         " Turn on syntax highlighting allowing local overrides
set encoding=utf-8    " Set default encoding to UTF-8
filetype off          " Required by Vundle
set history=50        " keep 50 lines of command line history
set mouse=a           " only selects the text, keeping the line numbers out
set mousehide         " disable mouse support in all modes

" ViM-LaTeX
let g:Tex_CompileRule_pdf = 'xelatex -interaction=nonstopmode $*'
let g:Tex_DefaultTargetFormat = "pdf"
let g:Tex_ViewRuleComplete_pdf = '/usr/bin/open -a Skim $*.pdf' 

" LaTeX-XeTeX
command Pdflatex execute "!latexmk -pdflatex=''xelatex -synctex=1 -interaction=nonstopmode %O %S/'' -silent -pdf %"
command Xelatex execute "!latexmk -pdflatex=''xelatex -synctex=1 -interaction=nonstopmode %O %S/'' -silent -pdf %"

" Whitespace

set textwidth=70
set wrapmargin=10                 " wrap lines -10 from the end
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode
set smartindent

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen
set showmatch                     " Highlights matching brackets in programming languages

" Searching

set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

" Backup and swap files

set nobackup
set nowritebackup
set noswapfile
set nowb          " Prevents automatic write backup before overwriting file
set autoread      " Auto-reload a file as soon as it changes on disk

" Look & feel

set guifont=Inconsolata-g:h12
colorscheme Tomorrow
set showcmd                     " Show current vim command in status bar
set showmode                    " Show current vim mode
set go-=T go-=r go-=L           " No toolbar, no right and left scrollbars

" Wild settings
set wildmode=list:longest
set wildmenu                   " Use a scrollable menu for filename completions

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
filetype plugin indent on      " required by Vundle

" My Bundles
" Bundle 'jcf/vim-latex'
Bundle 'kien/ctrlp.vim'
