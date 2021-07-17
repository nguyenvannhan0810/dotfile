brew install neovim

ln -sf /usr/local/bin/nvim /usr/local/bin/vim

echo "--- Install The Siver Searcher ---"
brew install the_silver_searcher

echo "--- Install PHP-CS-Fixer ----"
brew install php-cs-fixer

if [ ! -d "${HOME}/.config" ]
then
    mkdir $HOME/.config
fi

ln -sf $PWD/configs/nvim $HOME/.config/nvim
