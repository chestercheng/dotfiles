# ex: ts=2 sw=2 et filetype=bash

export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="UTF-8"
export LANG="en_US.UTF-8"
export TERM='xterm-256color'

export PATH=$HOME/.local/bin:$PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
. ~/.aliases
. ~/.bash_prompt


# Python user bin
[[ -d "$(python -m site --user-base)/bin" ]] && export PATH="$(python -m site --user-base)/bin:${PATH}"


# Simple Python Version Management
export PYENV_ROOT="${HOME}/.pyenv"
[[ -s "${HOME}/.pyenv/bin" ]] && export PATH="${HOME}/.pyenv/bin:${PATH}"
[[ -s "${HOME}/.pyenv/completions" ]] && . "${HOME}/.pyenv/completions/pyenv.bash"


# Go Version Manager
[[ -s "${HOME}/.gvm/scripts/gvm" ]] && . "${HOME}/.gvm/scripts/gvm"
[[ -s "${HOME}/.gvm/scripts/completion" ]] && . "${HOME}/.gvm/scripts/completion"


# Terraform bash completion
if [ -x $(command -v terraform) ]; then
  complete -o nospace -C terraform tf
fi


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/chester/.sdkman"
[[ -s "/Users/chester/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/chester/.sdkman/bin/sdkman-init.sh"
