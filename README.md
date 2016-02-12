# Dockerized PHP-fpm + Nginx

Build:

	docker build -t alombarte/nginx-php-fpm .

Run:

	# Pull and run official PHP fpm image:
	docker run -d --name php-fpm -v $PWD/example:/var/www/app php:fpm
	# Run this image:
	docker run -d --name nginx-php -v $PWD/example:/var/www/html --link "php-fpm" -p 8080:80 alombarte/nginx-php-fpm
	# Same changing port and host:
	docker run -d --name nginx-php -v $PWD/example:/var/www/html --link "php-fpm" -p 8080:80 -e "APP_HOST=php-fpm" -e "APP_PORT=9000" alombarte/nginx-php-fpm

Access your containers:

	docker exec -it php-fpm bash
	docker exec -it nginx-php bash
	
