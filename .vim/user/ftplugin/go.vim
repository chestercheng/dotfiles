augroup go
  autocmd!
  autocmd FileType go set shiftwidth=4 softtabstop=4 tabstop=4 noexpandtab
  autocmd FileType go nmap <silent> <leader>r :! go run % <cr>
  autocmd BufWritePost *.go silent ! gofmt -w % &> /dev/null
augroup END
