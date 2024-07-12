FROM nginx:1.27.0-alpine

RUN apk update && apk add apache2-utils

EXPOSE 80
