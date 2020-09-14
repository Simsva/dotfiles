" Navigate buffers
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Resize buffers
nnoremap <silent> <M-j> :resize -2<CR>
nnoremap <silent> <M-k> :resize +2<CR>
nnoremap <silent> <M-h> :vertical resize -2<CR>
nnoremap <silent> <M-l> :vertical resize +2<CR>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" Switch tabs with tab key
nnoremap <TAB> gt
nnoremap <S-TAB> gT

" TODO: Move plugin mappings to respective config files
" Paste bold date (for VimWiki)
inoremap <leader>now **<CR><Esc>!!date<CR>A**<Esc>kJxA<CR><CR>

" Open NERDTree
nnoremap <silent> <leader>f :NERDTreeToggle<CR>

" Open VimWiki
nnoremap <silent> <leader>v :VimwikiIndex<CR>

" Markdown preview
nnoremap <leader>p <Plug>MarkdownPreviewToggle
