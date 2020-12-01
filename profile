# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

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
