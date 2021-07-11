brew install neovim

echo "--- Install NERD Fonts ---"
git clone https://github.com/ryanoasis/nerd-fonts.git
chmod +x nerd-fonts/install.sh && ./nerd-fonts/install.sh
sudo rm -r nerd-fonts

echo "--- Install The Siver Searcher ---"
brew install the_silver_searcher

echo "--- Install PHP-CS-Fixer ----"
brew install php-cs-fixer

if [ ! -d "${HOME}/.config" ]
then
    mkdir $HOME/.config
fi

ln -sf $PWD/configs/nvim $HOME/.config/nvim
