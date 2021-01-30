augroup terraform
  autocmd!
  autocmd FileType terraform set shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd BufWritePost *.tf,*.tfvars silent ! terraform fmt % &> /dev/null
augroup END
