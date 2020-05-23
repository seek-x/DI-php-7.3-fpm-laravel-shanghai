FROM      php:7.3-fpm

LABEL     tag='php:7.3-fpm-laravel-shanghai'
LABEL     version='2.0'
LABEL     players='racing@seek-x.com,lj@seek-x.com,chen@seek-x.com'

RUN       php -r "copy('https://install.phpcomposer.com/installer', 'composer-setup.php');" && \
          php composer-setup.php && \
          php -r "unlink('composer-setup.php');" && \
          mv composer.phar /usr/local/bin/composer && \
          composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/ && \
          apt-get update && apt-get install -y zip unzip && \
          docker-php-ext-install pdo_mysql
