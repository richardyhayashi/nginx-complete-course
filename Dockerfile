FROM nginx:1.27.0-alpine

RUN apk update && apk add --no-cache --virtual build-base \
    linux-headers \
    apache2-utils \
    geoip-dev \
    #curl-dev \
    #libxml2-dev \
    libxslt-dev \
    gd-dev \
    #lmdb-dev \
    openssl-dev \
    pcre-dev \
    #perl-ExtUtils-Embed \
    #yajl-dev \
    zlib-dev

COPY ./etc/nginx/.htpasswd /etc/nginx

COPY ./src /usr/share/nginx/html

EXPOSE 80
