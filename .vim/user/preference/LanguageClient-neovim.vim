let g:LanguageClient_diagnosticsEnable = 0
let g:LanguageClient_serverCommands = {
  \ 'go': ['gopls'],
  \ 'python': ['pyls'],
  \ 'c': ['clangd'],
  \ 'cpp': ['clangd']
  \ }
