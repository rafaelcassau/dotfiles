# .dotfiles

My dotfiles RHEL family

```shell
# required libraries

sudo yum install vim gvim
sudo yum install tmux


# zsh/ohmyzsh

sudo yum install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'exec zsh' >> ~/.bashrc
source ~/.bashrc

# pyenv

git clone https://github.com/pyenv/pyenv.git ~/.pyenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'export PYTHON_CONFIGURE_OPTS="--enable-shared"' >> ~/.zshrc

echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
source ~/.zshrc


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


# .vimrc references

https://youtu.be/n9k9scbTuvQ



# vim for beginners

https://www.youtube.com/playlist?list=PLm323Lc7iSW_wuxqmKx_xxNtJC_hJbQ7R

https://blog.juliobiason.me/books/uma-licao-de-vim/
