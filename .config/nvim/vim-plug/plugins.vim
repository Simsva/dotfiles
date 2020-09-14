" Auto-install vim-plug
if empty(glob('$XDG_CONFIG_HOME/nvim/autoload/plug.vim'))
  silent !curl -fLo $XDG_CONFIG_HOME/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('$XDG_CONFIG_HOME/nvim/autoload/plugged')
  
  " Intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Vim Wiki
  Plug 'vimwiki/vimwiki'

  " Start menu
  Plug 'mhinz/vim-startify'

  " Project view
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  " Snippets
  Plug 'honza/vim-snippets'

  " Emmet
  Plug 'mattn/emmet-vim'

  " Create Gists
  Plug 'mattn/vim-gist'

  " SXHKD syntax highlighting
  Plug 'kovetskiy/sxhkd-vim'

  " Workaround for 'w !sudo tee %'
  Plug 'lambdalisue/suda.vim'

  Plug 'iamcco/markdown-preview.nvim'

call plug#end()

" Auto-download missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
