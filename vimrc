" Basic setup

set nocompatible      " Use vim, no vi defaults
set ruler             " Show line and column number
syntax enable         " Turn on syntax highlighting allowing local overrides
set encoding=utf-8    " Set default encoding to UTF-8
filetype plugin on
set history=50        " keep 50 lines of command line history
set mouse=a           " only selects the text, keeping the line numbers out
set mousehide         " disable mouse support in all modes

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

"" Searching

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

" Wild settings
set wildmode=list:longest
set wildmenu                   " Use a scrollable menu for filename completions
