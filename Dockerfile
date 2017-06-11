FROM php:7.0-apache

MAINTAINER Tom Lorentsen "tom@thomaslorentsen.co.uk"

COPY src/ /var/www/html/

RUN { \
	echo ""; \
	echo "ServerName www.example.com:80"; \
} >> /etc/apache2/apache2.conf \
	apachectl configtest
