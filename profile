
if [[ ! $TERM =~ screen ]]; then
  tmux start-server
  if ! tmux has-session -t "work_session"; then
    tmux new-session -n "status" -s "work_session" -d
    tmux list-windows

    tmux select-window -t "work_session:0"
    tmux split-window -h
    tmux respawn-pane -k -t "work_session:0.0" "watch nvidia-smi"
    tmux respawn-pane -k -t "work_session:0.1" "htop"

    tmux new-window -P -t "work_session"
  fi
  tmux attach-session -t "work_session"
fi
