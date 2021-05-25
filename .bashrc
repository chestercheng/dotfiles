# ex: ts=2 sw=2 et filetype=bash

export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="UTF-8"
export LANG="en_US.UTF-8"
export TERM='xterm-256color'

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export PATH=$HOME/.local/bin:$PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
. ~/.aliases
. ~/.bash_prompt


# devenv
[[ -s "${HOME}/.devenv/scripts/init" ]] && . "${HOME}/.devenv/scripts/init"


# Go Version Manager
[[ -s "${HOME}/.gvm/scripts/gvm" ]] && . "${HOME}/.gvm/scripts/gvm"
[[ -s "${HOME}/.gvm/scripts/completion" ]] && . "${HOME}/.gvm/scripts/completion"


# Terraform bash completion
if [ -x $(command -v terraform) ]; then
  complete -o nospace -C terraform tf
fi
