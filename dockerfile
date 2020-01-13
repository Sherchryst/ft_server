FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install -y nginx && apt-get install -y wget
RUN apt-get install -y mariadb-server
RUN apt-get install -y php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip php-mysql php-fpm

RUN wget https://files.phpMyAdmin.net/phpMyAdmin/4.9.4/phpMyAdmin-4.9.4-all-languages.tar.gz
RUN tar -zxvf phpMyAdmin-4.9.4-all-languages.tar.gz && rm phpMyAdmin*.gz
RUN mv phpMyAdmin-4.9.4-all-languages /var/www/html/phpMyAdmin

RUN wget https://wordpress.org/latest.tar.gz
RUN mkdir /var/www/html/ftserver
RUN tar xzf latest.tar.gz --strip-components=1 -C /var/www/html/ftserver
RUN chown www-data:www-data /var/www/html/* -R
RUN chown -R www-data:www-data /var/www/html/phpMyAdmin && chmod 777 /var/www/html/phpMyAdmin
RUN mkdir /etc/phpMyAdmin && mkdir /var/www/html/phpMyAdmin/tmp && chmod 777 /var/www/html/phpMyAdmin/tmp
RUN rm /etc/nginx/sites-enabled/default
RUN rm /var/www/html/index.nginx-debian.html

COPY srcs/default.conf /etc/nginx/conf.d/.
COPY srcs/phpMyAdmin.conf /etc/nginx/conf.d/.
COPY srcs/config.inc.php /var/www/html/phpMyAdmin/.
COPY srcs/phpMyAdmin /etc/nginx/sites-available/.
RUN ln -s /etc/nginx/sites-available/phpMyAdmin /etc/nginx/sites-enabled/phpMyAdmin
COPY srcs/wp-config.php /var/www/html/ftserver/.
COPY srcs/conf.sql .
COPY srcs/nginx-selfsigned.key /etc/ssl/private/.
COPY srcs/nginx-selfsigned.crt /etc/ssl/certs/.
COPY srcs/self-signed.conf /etc/nginx/snippets/.
COPY srcs/dhparam.pem /etc/nginx/.
COPY srcs/ssl-params.conf /etc/nginx/snippets/.
COPY srcs/ftserver /etc/nginx/sites-available/.
RUN ln -s /etc/nginx/sites-available/ftserver /etc/nginx/sites-enabled/ftserver

CMD service nginx start && service mysql start && mysql < conf.sql -u root && mariadb < /var/www/html/phpMyAdmin/sql/create_tables.sql -u root && service php7.3-fpm start && bash
