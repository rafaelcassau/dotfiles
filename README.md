# dotfiles

My dotfiles

```shell
# required libraries

sudo yum install gvim
sudo yum install tmux
sudo yum install git exuberant-ctags ncurses-term curl


# zsh/ohmyzsh

sudo yum install zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

source $ZSH/oh-my-zsh.sh


# vim-plug download

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# my dot files

git clone git@github.com:rafaelcassau/dotfiles.git ~/dotfiles


# configurations

cp ~/dotfiles/.vimrc ~/
cp ~/dotfiles/.tmux.conf ~/


# vim plugin install

vim .
:PlugInstall


# .vimrc references

https://youtu.be/n9k9scbTuvQ



# vim for beginners

https://www.youtube.com/playlist?list=PLm323Lc7iSW_wuxqmKx_xxNtJC_hJbQ7R

https://blog.juliobiason.me/books/uma-licao-de-vim/
