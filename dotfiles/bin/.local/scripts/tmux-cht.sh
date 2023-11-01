#!/usr/bin/env bash
selected=`cat ~/.tmux-cht-languages ~/.tmux-cht-command | fzf`
if [[ -z $selected ]]; then
    exit 0
fi

read -p "Que deseas: " query

if grep -qs "$selected" ~/.tmux-cht-languages; then
	tmux split-window -p 35 -h bash -c "curl cht.sh/$selected/$(echo "$query" | tr " " "+") | less -r"
else
	tmux split-window -p 35 -h bash -c "curl cht.sh/$selected~$query | less -r"
fi
