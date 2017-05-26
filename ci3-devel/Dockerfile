FROM php:5-fpm-alpine
RUN apk add --no-cache freetype \
                        libpng \
                        libjpeg-turbo \
                        freetype-dev \
                        libpng-dev \
                        libjpeg-turbo-dev \
                        libmcrypt \
                        libmcrypt-dev \
                        postgresql-dev \
                        libpq \
                        libltdl \
                        gmp \
                        gmp-dev \
                        icu \
                        icu-dev \
                        libxml2 \
                        libxml2-dev \
                        libxslt \
                        libxslt-dev \
                        libcurl \
                        curl-dev

RUN docker-php-ext-install -j8 iconv mcrypt hash mbstring gmp intl curl gd \
        && docker-php-ext-install -j8 pdo pdo_mysql pdo_pgsql \
        && docker-php-ext-install opcache dom zip session json exif fileinfo \
        && docker-php-ext-install xml xmlrpc xmlwriter xsl
RUN apk del freetype-dev \
                libpng-dev \
                libjpeg-turbo-dev \
                libmcrypt-dev \
                postgresql-dev \
                gmp-dev \
                icu-dev \
                libxml2-dev \
                libxslt-dev \
                curl-dev
# App specific traits here
RUN mkdir /app
WORKDIR /app
