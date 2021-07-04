#!/bin/sh

echo "----- Install ZSH -----"
brew install zsh
chsh -s $(which zsh)

echo "----- Install Oh-My-Zsh -----"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "---- ZSH Auto Sugention ---"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "---- ZSH Highlight ---"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


echo "--- Symlink zshrc"
ln -sf $PWD/configs/.zshrc $HOME

exec /bin/zsh
