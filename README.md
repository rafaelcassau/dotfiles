# .dotfiles

My dotfiles RHEL family

```shell
# required libraries

sudo yum groupinstall "Development Tools"

sudo yum install libffi-devel \
    zlib-devel \
    bzip2-devel \
    readline-devel \
    sqlite-devel \
    wget \
    curl \
    llvm \
    ncurses-devel \
    openssl-devel \
    lzma-sdk-devel \
    libyaml-devel \
    redhat-rpm-config \
    xvim \
    vim-enhanced

sudo dnf install \ 
    cmake
    bat

sudo dnf install snapd
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install universal-ctags

sudo yum install vim gvim
sudo yum install tmux


# bash_aliases

echo 'alias vi='vimx'' >> ~/.bash_aliases
echo 'alias vim='vimx'' >> ~/.bash_aliases

source ~/.bash_aliases


# check if vim alias works properly to "xvim"
# should print "+clipboard" indicating "xvim" was called with success
# it's indicate that it's possible using copy/paste from clipboard

vim --version | grep clipboard


# zsh/ohmyzsh

sudo yum install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'exec zsh' >> ~/.bashrc
source ~/.bashrc
echo 'source ~/.bash_aliases' >> ~/.zshrc
source ~/.zshrc


# pyenv

curl https://pyenv.run | bash
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.zshrc
echo 'export PYTHON_CONFIGURE_OPTS="--enable-shared"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc
exec $SHELL

pyenv update

pyenv install 3.8.5

pyenv global 3.8.5


# vim-plug download

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# my dot files

git clone git@github.com:rafaelcassau/.dotfiles.git ~/.dotfiles


# configurations

mkdir -p ~/.vim/undodir
cp ~/.dotfiles/.vimrc ~/
cp ~/.dotfiles/.tmux.conf ~/


# vim plugin install

vim .
:PlugInstall


# YouCompleteMe deps install
python ~/.vim/plugged/YouCompleteMe/install.py --clang-completer


# .vimrc references

https://youtu.be/n9k9scbTuvQ


# vim for beginners

https://www.youtube.com/playlist?list=PLm323Lc7iSW_wuxqmKx_xxNtJC_hJbQ7R

https://blog.juliobiason.me/books/uma-licao-de-vim/


# git ignore custom files locally

echo 'Pipfile' >> ~/projects/redhat/<project-name>/.git/info/exclude
echo 'Pipfile.lock' >> ~/projects/redhat/<project-name>/.git/info/exclude


# git ignore custom files globally

echo 'Pipfile' >> ~/.gitignore_global
echo 'Pipfile.lock' >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
