#!/bin/bash -e
sleep 30
sudo apt update
sudo apt install -y apache2
sudo apt install -y php7.1 php7.1-mysql php7.1-curl php7.1-json libapache2-mod-php7.1
sudo -E debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo -E debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get -y install mysql-server mysql-client
