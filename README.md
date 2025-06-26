# nginx PHP Test Setup


This repository contains a simple Docker Compose setup with three containers:

- **nginx** – serves the PHP page over HTTPS
- **php** – runs the PHP-FPM interpreter
- **certbot** – obtains and renews Let's Encrypt certificates

## Usage


1. Generate an initial certificate (replace `eniware.info` with your domain):


```bash
docker-compose run --rm certbot certonly \
  --webroot -w /var/www/certbot \
  -d eniware.info --register-unsafely-without-email --agree-tos

```

2. Build and start the containers using Docker Compose:


```bash
docker-compose up --build
```


3. Open `https://localhost` (or your domain) in your browser to see the test page displaying the PHP version.

