# Nginx Server Complete Course

* Created 2004

### Use Cases

* High Performance Web Server
* Reverse Proxy
* Load Balancer

### Nginx Documentation

'https://nginx.org/en/docs/'

## Get Nginx Version

`nginx -v`
`nginx -V 2>&1 | tr -- - '\n' | grep _module`

## Curl

`$ curl localhost:8080`

`$ curl localhost:8080/fake.html`

### Using Header

`$ curl --header "Host: example.com" localhost:8080`
`$ curl --header "Host: www.example.com" localhost:8080`

## Selinux

### Look at Setting

`$ semanage fcontext -l | grep /usr/share/nginx/html`

### Set Setting

`$ semanage fcontext -a -t httpd_sys_content_t '/var/www/(/.*)?'`
`$ restorecon -R -v /var/www`

## Authenication

`ngx_http_auth_basic_module`

### Install Auth Tools

`$ apt install -y apache2-utils`
or
`$ yum install -y httpd-tools`

### Generate Password File

In `etc/nginx` directory:

`$ htpasswd -c /etc/nginx/.htpasswd admin`

* Will ask for password use 'supersecret'; creates encoded password.

### Access Protected Page

`$ curl -u admin:supersecret localhost:8080/admin.html`

## SSL

`ngx_http_ssl_module`

### Generate Self Signed Certificate

In `/etc/nginx/ssl` directory:

`$ openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/private.key -out /etc/nginx/ssl/public.pem`

* `-req` certificate request
* `-x509` structure
* `-nodes` not encrypt output key
* `-days` set expiration days of certificate
* `-newkey` type of key generated
* `-keyout` private key out
* `-out ` public key out

### Curl https

`$ curl -k [-u admin:supersecret] https://localhost:4443`

## Rewrite Module

`ngx_http_rewrite_module`

## YouTube

by `Science Course`

1. Introduction
2. What is Nginx?
3. What is HTTP?
4. Nginx vs Apache
5. Nginx vs Nginx plus
6. Setup Cent OS
7. Setup on Ubuntu
8. Nginx Configurations 
9. Setting first virtual host
10. Errors (404, 50x)
11. Basic Authentication
12. SSL certificate (self signed)
13. Rewrite rules.
14. Return (from http to https)
15. Modules
16. Use modsecurity Module <not completed>
17.
18.
19.
20.
21.
22.
23.
24.
25.