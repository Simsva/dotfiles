" General settings
set iskeyword+=-                    " Treat dash separated words as one object
set path+=$HOME                     " Change vim path
syntax enable                       " Enables syntax highlighting
set hidden                          " Keeps buffers loaded in background
set ruler                           " Shows cursor coordinates
set mouse=a                         " Enable mouse
set splitright                      " Vertical splits on the right
set splitbelow                      " Horizontal splits on the bottom
set nobackup                        " Recommended by coc
set nowritebackup                   " Recommended by coc

" Encoding
set encoding=utf-8                  " The encoding displayed
set fileencoding=utf-8              " The encoding written to file

" Indentation
set tabstop=2                       " Inserts 2 spaces for tab
set shiftwidth=2                    " Uses 2 spaces as indentation
set smarttab                        " Auto-detects indentation size
set expandtab                       " Expands tab to spaces
set smartindent                     " Smart indentation
set autoindent                      " Auto indent
set showtabline=2                   " Always show tabs

" Looks
set background=dark                 " Dark background
set guifont=Iosevka\ Fixed\ Slab    " Font
set number                          " Line numbers
"set cmdheight=2                    " More space for messaged etc.
set nowrap                          " Don't wrap lines

" Fuck (doesn't work in neovim, use suda.vim instead)
"cmap w!! w !sudo tee %
cmap w!! w suda://%
