FROM alpine:3.3

RUN apk add --update apache2 php-apache2  \
	php-curl php-json php-phar php-openssl \
	php-gd php-iconv php-mcrypt php-mysql \
	php-opcache php-ctype php-apcu php-intl \
	php-pdo php-pdo_mysql php-xml php-memcache \
	php-bcmath php-dom php-xmlreader mysql-client

RUN rm -rf /var/cache/apk/*

RUN mkdir /run/apache2
RUN rm /var/www/localhost/htdocs/index.html

EXPOSE 80

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]

