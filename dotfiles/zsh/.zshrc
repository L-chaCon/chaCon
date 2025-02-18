# ---- Tmux Sessionizer (based on ThePrimagen)
export FZF_SEARCH_FOLDERS="$HOME/workspace/github.com:\
$HOME/workspace/github.com/tails-monoloth:\
$HOME/workspace/github.com/tails.com:\
$HOME/workspace/github.com/chaCon"
bindkey -s "^ " 'source ~/.local/scripts/tmux-sessionizer\n'
# -- Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
CASE_SENSITIVE="true"
# User configuration
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fzf)
source $ZSH/oh-my-zsh.sh
set -o vi
# Nvim Path
export PATH="$PATH:$HOME/.local/neovim/bin"
# Zig Path
export PATH="$PATH:$HOME/.local/.zig/zig-macos-aarch64-0.13.0/"
# RD PATH
export PATH="$PATH:$HOME/.rd/bin"
# MYSQL 
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
# ----- Bat (better cat) -----
if [[ $(uname) == "Darwin" ]]; then
  BAT="bat"
elif [[ $(uname) == "Linux" ]]; then
  BAT="batcat"
fi
alias cat=$BAT
# MAN & HELP
export MANPATH="/usr/local/man:$MANPATH"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"
alias bathelp="$BAT --plain --language=help"
help() {
    "$@" --help 2>&1 | bathelp
}
alias -g -- --help="--help 2>&1 | bathelp"
# USER
export LANG=en_GB.UTF-8
export PAGER="less"
export EDITOR="nvim"
# GO Path
export PATH="$HOME/go/bin:$PATH"
# ALIAS
alias rm="rm -iv"
# ---- FZF -----
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"
# -- Use fd instead of fzf --
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"
# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}
# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}
bindkey -r "^G"
# FZF GIT
source ~/.fzf-git.sh/fzf-git.sh
# Redefine this function to change the options
_fzf_git_fzf() {
  fzf --height=50% --tmux 90%,70% \
    --layout=reverse --multi --min-height=20 --border \
    --border-label-pos=2 \
    --color='bg:#000000,bg+:#0e0e0e,fg:#f2f4f8,header:#3DDBD9:italic:underline,info:#25be6a,query:#f2f4f8' \
    --preview-window='right,50%,border-left' \
    --bind='ctrl-/:change-preview-window(down,50%,border-top|hidden|)' "$@"
}
export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
alias fzf='fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"'
# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift
  case "$command" in
    cd)           fzf --preview 'lsd --tree {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo $'{}"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "bat -n --color=always --line-range :500 {}" "$@" ;;
  esac
}
# ---- LSD (better ls) -----
alias ls="lsd"
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
# Zoxide 
eval "$(zoxide init zsh --cmd cd)"
# Yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
# Star Ship
eval "$(starship init zsh)"
# Generated for envman. Do not edit. Esto se instalo con github, es para 
# instalar programs desde scripts
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
# PYENV
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init -)"
alias pvc="pyenv virtualenv"
alias pvd="pyenv deactivate"
alias pva="pyenv activate"
# Poetry
poetry-export () {
    poetry export --without-urls --without-hashes --only debug >> requirements-debug.txt
    poetry export --without-urls --without-hashes >> requirements.txt
}
