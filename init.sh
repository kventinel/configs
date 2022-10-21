#!/bin/sh 
DIR=$(dirname ${BASH_SOURCE[0]})
sudo apt update
sudo apt full-upgrade -y
sudo apt install -y \
    git-lfs \
    libgl-dev \
    python3-pip \
    tmux \
    vim \
    zsh
sudo apt autoremove
pip3 install --upgrade pip
pip3 install --upgrade --extra-index-url https://download.pytorch.org/whl/cpu \
    clip \
    diffusers \
    einops \
    invisible-watermark \
    ipython \
    jinja2 \
    kornia \
    numpy \
    omegaconf \
    onnx \
    onnx_tf \
    pytorch_lightning \
    streamlit \
    streamlit_drawable_canvas \
    taming-transformers-rom1504 \
    torch \
    torchaudio \
    torchvision \
    tensorflow-cpu \
    tensorflow_probability \
    transformers
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mkdir $HOME/.ssh
cp $DIR/tmux.conf $HOME/.tmux.conf
cp $DIR/profile-full-zsh $HOME/.profile
cp $DIR/zprofile $HOME/.zprofile
cp $DIR/vimrc-full $HOME/.vimrc
cp $DIR/ssh/rc $HOME/.ssh/rc
vim +PluginInstall +qall
git config --global user.email "kventinel@gmail.com"
git config --global user.name "Aliaksei Rak"
compaudit | xargs chmod g-w,o-w
