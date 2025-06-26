FROM nginx:alpine
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /var/www/certbot

COPY app /var/www/html

