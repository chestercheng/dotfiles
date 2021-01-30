if &compatible
  set nocompatible " Be iMproved
endif

" Required
set runtimepath+=$HOME/.vim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('$HOME/.vim/dein')
  call dein#begin('$HOME/.vim/dein')

  " Let dein manage dein
  call dein#add('$HOME/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add plugins
  call dein#add(
    \ 'autozimu/LanguageClient-neovim',
    \ {'rev': 'next', 'build': 'bash install.sh'},
    \ {'on_ft': ['c', 'cpp', 'go', 'python', 'java']})
  call dein#add('djoshea/vim-autoread')
  call dein#add('dracula/vim')
  call dein#add('ekalinin/Dockerfile.vim', {'on_ft': 'dockerfile'})
  call dein#add('ervandew/supertab')
  call dein#add('fcpg/vim-osc52')
  call dein#add('hashivim/vim-terraform', {'on_ft': 'terraform'})
  call dein#add('junegunn/limelight.vim')
  call dein#add('junegunn/vim-easy-align')
  call dein#add('mg979/vim-visual-multi')
  call dein#add('othree/eregex.vim')
  call dein#add('preservim/nerdcommenter')
  call dein#add('preservim/nerdtree')
  call dein#add('tpope/vim-fugitive')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" Load other vim script
runtime! user/preference/*.vim
runtime! user/ftplugin/*.vim
