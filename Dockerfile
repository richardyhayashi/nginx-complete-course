FROM nginx:1.27.0-alpine

RUN apk update && apk add apache2-utils

COPY ./etc/nginx/.htpasswd /etc/nginx

COPY ./src /usr/share/nginx/html

EXPOSE 80
