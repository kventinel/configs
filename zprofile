# initial configs
ssh-add -K ~/.ssh/work
ssh-add -K ~/.ssh/shad
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# bash tools
alias ls='ls -G'
alias ll='ls -al'

# arcadia tools
ulimit -n 10000
# arc mount -m /Users/alexrak/arc/arcadia/ -S /Users/alexrak/arc/store/
alias ya='/Users/alexrak/arc/arcadia/ya'
alias yt='ya tool yt'
export MATPLOTLIBRC=$HOME/.matplotlib/matplotlibrc

# yandex tokens and other staff
export YT_PROXY=hahn
export PATH="/usr/local/opt/bison/bin:$PATH"

# go tools
export GOPATH=$HOME/gocode
export PATH=$PATH:$GOPATH/bin

# c tools
#alias gcc='/usr/local/Cellar/gcc/10.2.0/bin/gcc-10'
#alias g++='/usr/local/Cellar/gcc/10.2.0/bin/g++-10'

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
