FROM php:5.6-apache

RUN sed -i 's/deb.debian.org/archive.debian.org/g; s/security.debian.org/archive.debian.org/g; /stretch-updates/d' /etc/apt/sources.list \
    && apt-get -o Acquire::Retries=5 -o Acquire::Check-Valid-Until=false update \
    && apt-get -o Acquire::Retries=5 install -y --fix-missing --allow-unauthenticated --no-install-recommends libfreetype6-dev libjpeg62-turbo-dev libpng-dev \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd mysql mysqli pdo_mysql mbstring \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && a2enmod rewrite headers

COPY docker/apache/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY docker/php/entrypoint.sh /usr/local/bin/keweiyi-entrypoint

RUN chmod +x /usr/local/bin/keweiyi-entrypoint

ENTRYPOINT ["keweiyi-entrypoint"]
CMD ["apache2-foreground"]
