augroup python
  autocmd!
  autocmd FileType python set shiftwidth=4 softtabstop=4 tabstop=4 expandtab
  autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
  autocmd FileType python match Excess /\%80v.*/
  autocmd BufWritePost *.py silent ! black -l 80 -S -q % &> /dev/null
augroup END
