FROM nginx:alpine
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

COPY app /var/www/html
RUN mkdir -p /var/www/certbot

