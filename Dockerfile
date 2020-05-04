FROM      php:7.2.29-fpm-alpine3.11

LABEL     tag='php:7.2-laravel6'
LABEL     version='1.0'
LABEL     player='Racing'

RUN       php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
          php composer-setup.php && \
          php -r "unlink('composer-setup.php');" && \
          mv composer.phar /usr/local/bin/composer && \
          composer self-update
