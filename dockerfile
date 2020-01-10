FROM debian:buster
#install packages
RUN apt-get update && apt-get install -y nginx
RUN apt-get install -y wget
RUN apt-get install -y mariadb-server
RUN apt-get install -y php php-fpm php-cgi php-mysqli php-pear php-mbstring php-gettext libapache2-mod-php php-common php-phpseclib php-mysql
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN wget https://files.phpmyadmin.net/phpMyAdmin/${VER}/phpMyAdmin-5.0.1-english.tar.gz
RUN tar xvf phpMyAdmin-5.0.1-english.tar.gz && rm phpMyAdmin*.gz

WORKDIR /Users/sgah/Repositories/ft_server
