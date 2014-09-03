alias git-tmux='tmux new -s $(basename $(pwd))'

alias tml="tmux list-sessions"
alias tma="tmux -2 attach -t $1"
alias tmk="tmux kill-session -t $1"
