sudo apt update
sudo apt full-upgrade -y
sudo apt install -y \
    git-lfs \
    libgl-dev \
    python3-pip \
    zsh
pip3 install --upgrade \
    clip \
    diffusers \
    einops \
    invisible-watermark \
    jinja2 \
    kornia \
    numpy \
    omegaconf \
    pytorch_lightning \
    streamlit \
    streamlit_drawable_canvas \
    taming-transformers-rom1504 \
    torch \
    torchvision \
    transformers
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mkdir $HOME/.ssh
cp tmux.conf $HOME/.tmux.conf
cp profile-full-zsh $HOME/.profile
cp zprofile $HOME/.zprofile
cp vimrc-full $HOME/.vimrc
cp ssh/rc $HOME/.ssh/rc
vim +PluginInstall +qall
git config --global user.email "kventinel@gmail.com"
git config --global user.name "Aliaksei Rak"
compaudit | xargs chmod g-w,o-w
