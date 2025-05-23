#!/bin/bash

#pyenv
alias pvc="pyenv virtualenv"
alias pvd="pyenv deactivate"
alias pva="pyenv activate"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init -)"

# poetry
poetry-export () {
  poetry export --without-urls --without-hashes --only debug >> requirements-debug.txt
  poetry export --without-urls --without-hashes >> requirements.txt
}
export POETRY_CONFIG_DIR="$HOME/.config/pypoetry"
