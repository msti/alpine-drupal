# Docker image for drupal with alpine

php 5.6

apache 2.4

mariadb 10.1

Run using:
```
docker build -t app .
docker run -d -v /var/www:/var/www/localhost/htdocs -p 8080:80 app
```
