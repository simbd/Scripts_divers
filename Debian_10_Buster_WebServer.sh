#!/bin/bash
# A lancer avec sudo ou compte root
#####

# Maj/Nettoyage
apt update && apt full-upgrade -y
apt autoremove --purge -y && apt clean

### Install server ###

# Apache
apt install -y apache2 libapache2-mod-php 
systemctl enable apache2
a2enmod rewrite
# Si besoin d'activer la compression
##a2enmod deflate
# Si besoin modifier/contrôler header
##a2enmod headers

# PHP (7.3 pour Buster)
apt install -y apache2 libapache2-mod-php php-mysql
# Modules php les plus conrants 
apt install -y php-{curl,gd,intl,memcache,xml,zip,mbstring,json}
systemctl restart apache2
echo "<?php phpinfo(); ?>" > /var/www/html/Info_Phpdeb-10.php

# Base de donnée MariaDB
apt install -y mariadb-server

# Configuration Mysql (valider manuellement dans le terminal):
mysql_secure_installation
##Exemple:
###Remove anonymous users? [Y/n] Y
###Disallow root login remotely? [Y/n] Y
###Remove test database and access to it? [Y/n] Y
###Reload privilege tables now? [Y/n] Y

# Pour créer un utilisateur dans la base de donnée (à faire manuellement) :
#mysql -u root -p
#CREATE USER 'MONLOGIN'@'localhost' IDENTIFIED BY 'MONMDP';
#GRANT ALL PRIVILEGES ON *.* TO 'MONLOGIN'@'localhost' WITH GRANT OPTION;
#FLUSH PRIVILEGES;
#exit

systemctl enable mariadb

# Divers
apt install -y openssh 
a2enmod ssl
a2ensite default-ssl
systemctl restart apache2
apt install -y unzip

# Phpmyadmin
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-all-languages.zip
mv phpMyAdmin-5.0.1-all-languages /usr/share/phpmyadmin
chown -R www-data:www-data /usr/share/phpmyadmin
apt install -y php-imagick php-phpseclib php-php-gettext php7.3-mysql 
## cf suite ici : https://linuxhint.com/install_phpmyadmin_debian_10/

# Certificat SSL Let's encrypt
systemctl stop apache2
apt install -y python3-certbot-apache letsencrypt certbot

#cf doc : https://www.adsysteme.com/certificat-ssl-lets-encrypt-pour-apache-sous-debian-9/
# Lancer certbot et répondre aux questions suivant le domaine
certbot




