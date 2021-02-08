" ####################
" # Insert mode maps #
" ####################
" go to start/end of line
imap <Char-1> <Char-15>:normal ^<cr>
imap <Char-5> <Char-15>:normal $<cr>
" go to prev/next word
imap <ESC>b <Char-15>:normal b<cr>
imap <ESC>f <Char-15>:normal w<cr>


" ####################
" # Normal mode maps #
" ####################
nmap <silent> <F2> :NERDTreeToggle<cr>
nmap <silent> <F3> <plug>(lcn-menu)

nmap <silent> <leader><ESC> :let @/=""<cr>
nmap <silent> <leader>a     <plug>(EasyAlign)
nmap <silent> <leader>l     :Limelight!!<cr>

nmap <silent> K  <plug>(lcn-hover)
nmap <silent> gI <plug>(lcn-implementation)
nmap <silent> gd <plug>(lcn-definition)
nmap <silent> gr <plug>(lcn-references)
nmap <silent> gs <plug>(lcn-symbols)


" ####################
" # Visual mode maps #
" ####################
vmap <silent> <F5> :sort<cr>

vmap <silent> <leader>a <plug>(EasyAlign)

vmap <silent> y y:Oscyank<cr>
