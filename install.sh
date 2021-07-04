#!/bin/sh

echo "========== Setup VimRC =========="
ln -sf "${PWD}/configs/.vimrc ${HOME}"

while :
do
    echo "========== START SETUP =========="
    echo "1. Install Xcode Select (Command Line Tools Package)"
    echo "2. Install Homebrew"
    echo "3. Instal Iterm2"
    echo "4. Install Iterm - Zsh - Oh My ZSH"
    echo "5. Install Font Source Code Pro"
    echo "6. Install Postman"
    echo "7. Install Sublime Text"
    echo "0. Exit"
    echo "========== END SETUP =========="
    echo "Please choose one options"
    
    read inputOption

    case $inputOption in
        1)
            echo "----- Instal Xcode Select -----"
            xcode-select --install
            echo "----- # Instal Xcode Select -----"
            ;;
        2)
            echo "----- Install Homebrew -----"
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
            echo "----- # Install Homebrew -----"
            ;;
        3) 
            echo "----- Install Iterm2 -----"
            brew install --cask iterm2
            echo "----- #  Install Iterm2 -----"
            ;;
        4)
            echo "----- Setup ZSH -----"
            chmod +x ./plugins/zsh.sh
            ./plugins/zsh.sh
            echo "----- # Setup ZSH -----"
            ;;
        5)
            echo "----- Install Neccessary Fonts -----"
            chmod +x ./plugins/fonts.sh
            ./plugins/fonts.sh 
            echo "----- # Install Neccessary Fonts -----"
            ;;
        6)
            echo "----- Install Postman -----"
            brew install --cask postman
            echo "----- # Install Postman -----"
            ;;
        7) 
            echo "----- Install Sublime Text -----"
            brew install --cask sublime-text
            echo "----- # Install Sublime Text ------"
            ;;
       	0) 
	    break
            ;;  
    esac
done


