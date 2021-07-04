#!/bin/sh

brew tap shivammathur/php

while : 
do 
    echo "========== Choose PHP Version ======"
    echo "1. PHP 7.4"
    echo "0. Back"
    echo "===================================="

    read phpVersion

    case $phpVersion in 
        1)
            brew install php@7.4
            ln -sf $PWD/configs/php74-fpm.conf /usr/local/etc/php/7.4/php-fpm.d/www.conf
           
            brew services restart php@7.4
            brew services enable php@7.4
            ;;
        0)
            break
            ;;
    esac
done
