FROM php:7.4.26-cli
WORKDIR /app
RUN apt-get update \
    && apt-get install -y libzip-dev wget git-core python-pip \
    && docker-php-ext-install zip \
    && pip install Sphinx
ADD . /app
CMD [ "make", "cs", "test" ]
