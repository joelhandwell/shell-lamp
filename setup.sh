#!/bin/bash -e
sleep 30
sudo apt update
sudo apt install -y apache2
sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update -y
sudo apt install -y php7.2 php7.2-mysql php7.2-curl php7.2-json libapache2-mod-php7.2
sudo -E debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo -E debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get -y install mysql-server mysql-client
