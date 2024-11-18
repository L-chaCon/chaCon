export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
CASE_SENSITIVE="true"
# User configuration
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fzf)
source $ZSH/oh-my-zsh.sh
set -o vi
# MAN & HELP
export MANPATH="/usr/local/man:$MANPATH"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"
alias bathelp='bat --plain --language=help'
help() {
    "$@" --help 2>&1 | bathelp
}
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'
# USER
export LANG=en_GB.UTF-8
export PAGER="bat"
# GO Path
export PATH="/Users/artlogic/go/bin:$PATH"
# ALIAS
alias rm="rm -iv"
alias sve="source .venv/bin/activate"
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
source ~/.fzf-git.sh/fzf-git.sh
export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"
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
# ----- Bat (better cat) -----
export BAT_THEME="Coldark-Dark"
# ---- LSD (better ls) -----
alias ls="lsd"
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
# ---- Tmux Sessionizer (based on ThePrimagen)
export FZF_SEARCH_FOLDERS="$HOME/Desktop/Kun/Personal:$HOME/Desktop/Kun/3.artlogic:$HOME"
bindkey -s "^ " 'source ~/.local/scripts/tmux-sessionizer\n'
# Zoxide 
eval "$(zoxide init zsh --cmd cd)"
# Star Ship
eval "$(starship init zsh)"

# Generated for envman. Do not edit. Esto se instalo con github, es para 
# instalar programs desde scripts
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
