#!/bin/sh


while :
do
    echo "========== START SETUP =========="
    echo "0. Install Basic Setup (After Refresh MacOs)"
    echo "1. Instal Iterm2"
    echo "2. Install Iterm - Zsh - Oh My ZSH"
    echo "3. Install Neccessary Fonts"
    echo "4. Install Postman"
    echo "5. Install Sublime Text"
    echo "6. Install Nginx Server"
    echo "7. Install PHP (Many Version)"
    echo "8. Install Mariadb"
    echo "9. Install Dnsmasq (Setup .test domain is localhost)"
    echo "Ctrl + c ToExit"
    echo "========== END SETUP =========="
    echo "Please choose one options"
    
    read inputOption

    case $inputOption in
        0) 
            echo "========== Setup VimRC =========="
            ln -sf $PWD/configs/.vimrc $HOME
            echo "----- Instal Xcode Select -----"
            xcode-select --install
            echo "----- # Instal Xcode Select -----"
            echo "----- Install Homebrew -----"
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
            echo "----- # Install Homebrew -----"
            brew update && brew upgrade
            # Disable GateKeeper
            sudo spctl --master-disable
            brew install openssl            
            ;;
        1) 
            echo "----- Install Iterm2 -----"
            brew install --cask iterm2
            echo "----- #  Install Iterm2 -----"
            ;;
        2)
            echo "----- Setup ZSH -----"
            chmod +x ./plugins/zsh.sh
            ./plugins/zsh.sh
            echo "----- # Setup ZSH -----"
            ;;
        3)
            echo "----- Install Neccessary Fonts -----"
            chmod +x ./plugins/fonts.sh
            ./plugins/fonts.sh 
            echo "----- # Install Neccessary Fonts -----"
            ;;
        4)
            echo "----- Install Postman -----"
            brew install --cask postman
            echo "----- # Install Postman -----"
            ;;
        5) 
            echo "----- Install Sublime Text -----"
            brew install --cask sublime-text
            echo "----- # Install Sublime Text ------"
            ;;
        6)
            echo "----- Setup Nginx -----"
            chmod +x plugins/nginx.sh
            ./plugins/nginx.sh
            echo "----- # Setup Nginx -----"
            ;;
        7)
            echo "----- Setup PHP -----"
            chmod +x plugins/php.sh
            ./plugins/php.sh
            echo "----- # Setup PHP -----"
            ;;
        8) 
            echo "----- Setup Mariadb -----"
            chmod +x plugins/mariadb.sh
            ./plugins/mariadb.sh
            echo "----- # Setup Mariadb -----"
            ;;
        9)
            echo "----- Setup DnsMasq -----"
            chmod +x plugins/dnsmasq.sh
            ./plugins/dnsmasq.sh
            echo "----- # Setup DnsMasq -----"
            ;;
        *) 
            echo "Don not understand. Dont have action you choose. Please choose again!"
            ;;
    esac
done


