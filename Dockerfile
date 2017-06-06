FROM php:7.0-apache

COPY src/ /var/www/html/

RUN { \
	echo ""; \
	echo "ServerName www.example.com:80"; \
} >> /etc/apache2/apache2.conf \
	apachectl configtest
