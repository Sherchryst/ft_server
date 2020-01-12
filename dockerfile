FROM debian:buster
#install nginx
RUN apt-get update && apt-get install -y nginx
RUN /etc/init.d/nginx start
CMD ["/etc/init.d/nginx","start"]

#COPY srcs/phpMyAdmin.conf /etc/nginx/conf.d
#RUN apt-get -y install software-properties-common
#RUN apt-get install -y wget
#RUN apt-get install -y mariadb-server
#RUN apt-get install -y php php-json php-fpm php-cgi php-mysqli php-pear php-mbstring php-gettext php-common php-phpseclib php-mysql
#RUN apt-get clean && rm -rf /var/lib/apt/lists/*
#RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-english.tar.gz
#RUN tar xvf phpMyAdmin-5.0.1-english.tar.gz && rm phpMyAdmin*.gz
#RUN mv phpMyAdmin-5.0.1-english /usr/share/phpMyAdmin

#COPY srcs/config.inc.php /usr/share/phpMyAdmin
#RUN /etc/init.d/mysql start && mysql -u root -p
#RUN ls /usr/share/phpMyAdmin/sql/create_tables.sql -u root -p


#WORKDIR /Users/sgah/Repositories/ft_server
