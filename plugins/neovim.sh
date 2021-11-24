brew install neovim tree-sitter luajit

brew install tmux

ln -sf /usr/local/bin/nvim /usr/local/bin/vim

echo "--- Install The Siver Searcher ---"
brew install the_silver_searcher

echo "--- Intall Universal CTags ----"
brew install --HEAD universal-ctags

if [ ! -d "${HOME}/.config" ]
then
    mkdir $HOME/.config
fi

ln -sf $PWD/configs/nvim $HOME/.config/nvim
