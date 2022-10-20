sudo apt update
sudo apt full-upgrade -y
sudo apt install -y zsh
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mkdir $HOME/.ssh
cp tmux.conf $HOME/.tmux.conf
cp zprofile $HOME/.zprofile
cp vimrc-full $HOME/.vimrc
cp ssh/rc $HOME/.ssh/rc
