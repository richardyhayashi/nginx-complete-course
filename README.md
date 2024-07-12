# Nginx Server Complete Course

* Created 2004

### Use Cases

* High Performance Web Server
* Reverse Proxy
* Load Balancer

### Nginx Documentation

'https://nginx.org/en/docs/'

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

`$ apt install -y apache2-utils`
or
`$ yum install -y httpd-tools`

### Generate Password File

`$ htpasswd -c /etc/nginx/.htpasswd admin`
* Will ask for password; creates encoded password.

### Access Protected Page

`$ curl -u admin:supersecret loclahosr:8080/admin.html`

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
12.
13.
14.
15.
16.
17.
18.
19.
20.
