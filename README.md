# ZSH

At first we need install zsh.

**Only linux:** Than use profile to change shell to zsh or change /etc/passwd.

Then install https://github.com/ohmyzsh/ohmyzsh and copy .zshrc and .zprofile to HOMEDIR.

# Vim

## Installation

**Linux** Install vim from https://github.com/vim/vim. Than build using `./configure --enable-python3interp` and `sudo make install`

**Mac** `brew install macvim` for OS X

## Settings 
Than copy .vimrc file from this repo and install https://github.com/VundleVim/Vundle.vim as plugin manager

Than install https://github.com/ycm-core/YouCompleteMe by command `/usr/bin/python3.8 ./install.py --all --system-libclang`

# Colors

At first we need import color themes from `iterm/colors` in gruvbox.

Than we need copy script from `iterm/scripts` to `Library/ApplicationSupport/iTerm2/Scripts/AutoLaunch` and activatate in iTerm menu `Scripts`.
