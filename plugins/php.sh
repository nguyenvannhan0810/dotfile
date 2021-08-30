#!/bin/sh

brew tap shivammathur/php
brew upgrade icu4c

while : 
do 
    echo "========== Choose PHP Version ======"
    echo "1. PHP 7.4"
    echo "2. PHP 7.2"
    echo "0. Back"
    echo "===================================="

    read phpVersion

    case $phpVersion in 
        1)
            brew install php@7.4
            ln -sf $PWD/configs/php74.ini /usr/local/etc/php/7.4/php.ini
            ln -sf $PWD/configs/php74-fpm.conf /usr/local/etc/php/7.4/php-fpm.d/www.conf
           
            brew services restart php@7.4

            brew unlink php
            brew link --overwrite php@7.4
            ;;

        2)
            brew install --build-from-source php@7.2
            ln -sf $PWD/configs/php72.ini /usr/local/etc/php/7.2/php.ini
            ln -sf $PWD/configs/php72-fpm.conf /usr/local/etc/php/7.2/php-fpm.d/www.conf

            brew services restart php@7.2

            brew unlink php
            brew link --overwrite php@7.2
            ;;
        0)
            break
            ;;
    esac
done
