# ZSH

Install zsh.
Only linux: Than use profile to change shell to zsh or change /etc/passwd.
Then install https://github.com/ohmyzsh/ohmyzsh
Then copy .zshrc and .zprofile

# Vim

Install vim from https://github.com/vim/vim
Than build using `./configure --enable-python3interp` and `sudo make install` (for linux) or using `brew install macvim` for OS X
Than copy .vimrc file from this repo and install https://github.com/VundleVim/Vundle.vim as plugin manager
Than install https://github.com/ycm-core/YouCompleteMe by command `/usr/bin/python3.8 ./install.py --all --system-libclang`

# Colors

gruvbox.itermcolors need import by iterm
