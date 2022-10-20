# initial configs
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# bash tools
alias ls='ls -G'
alias ll='ls -al'
export PATH=$PATH:$HOME/.local/bin

# go tools
export GOPATH=$HOME/gocode
export PATH=$PATH:$GOPATH/bin

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
