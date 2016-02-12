FROM nginx
MAINTAINER Albert Lombarte <alombarte@gmail.com>

ENV APP_HOST=php-fpm
ENV APP_PORT=9000

RUN rm /etc/nginx/conf.d/default.conf
ADD ./default.conf /etc/nginx/conf.d/
ADD ./run.sh /run.sh

CMD ["sh", "/run.sh"]