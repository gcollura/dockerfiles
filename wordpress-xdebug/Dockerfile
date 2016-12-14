FROM wordpress:latest
MAINTAINER Giulio Collura <giulio.collura@gmail.com>

# Enable and configure xdebug
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug
RUN echo "xdebug.remote_autostart=1\n" \
        "xdebug.remote_mode=req\n" \
        "xdebug.remote_handler=dbgp\n" \
        "xdebug.remote_connect_back=1\n" \
        "xdebug.remote_enable=1" \
        >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

# Increase upload limit
RUN echo "file_uploads = On\n" \
        "memory_limit = 500M\n" \
        "upload_max_filesize = 500M\n" \
        "post_max_size = 500M\n" \
        "max_execution_time = 1600\n" \
        > /usr/local/etc/php/conf.d/uploads.ini

RUN echo "log_errors = On\n" \
        "error_reporting = E_ALL" \
        > /usr/local/etc/php/conf.d/errors.ini
