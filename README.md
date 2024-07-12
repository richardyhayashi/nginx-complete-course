# Nginx Server Complete Course

* Created 2004

### Use Cases

* High Performance Web Server
* Reverse Proxy
* Load Balancer

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
11.
12.
13.
14.
15.
16.
17.
18.
19.
20.
