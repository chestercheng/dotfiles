let g:LanguageClient_diagnosticsEnable = 0
let g:LanguageClient_serverCommands = {
  \ 'go': ['gopls'],
  \ 'python': ['pipenv', 'run', 'pyls'],
  \ 'c': ['clangd'],
  \ 'cpp': ['clangd']
  \ }
