SHELL := bash

DEIN_INSTALLER ?= https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh


all: bashrc tmuxconf vimrc gitconfig


bashrc:
	ln -sf $(PWD)/.aliases $(HOME)/.aliases
	ln -sf $(PWD)/.bashrc $(HOME)/.bashrc
	ln -sf $(PWD)/.bash_profile $(HOME)/.bash_profile
	ln -sf $(PWD)/.bash_prompt $(HOME)/.bash_prompt


tmuxconf:
	ln -sf $(PWD)/.tmux.conf $(HOME)/.tmux.conf


vimrc:
	ln -sf $(PWD)/.vimrc $(HOME)/.vimrc
	ln -sf $(PWD)/.vim $(HOME)
ifeq ("$(wildcard $(HOME)/.vim/dein)", "")
	curl -sL $(DEIN_INSTALLER) | bash -s $(HOME)/.vim/dein
endif


gitconfig:
	ln -sf $(PWD)/.gitignore_global $(HOME)/.gitignore_global
	ln -sf $(PWD)/.gitconfig $(HOME)/.gitconfig
