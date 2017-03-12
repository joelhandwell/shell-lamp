#!/bin/bash -e
sleep 30
sudo apt update
sudo apt install -y apache2
sudo apt install -y php7.0 php7.0-mysql php7.0-curl php7.0-json libapache2-mod-php7.0
sudo -E debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo -E debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get -y install mysql-server mysql-client
