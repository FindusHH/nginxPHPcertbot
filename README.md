# nginx PHP Test Setup


1. Generate an initial certificate (replace `eniware.info` with your domain):

  -d eniware.info --register-unsafely-without-email --agree-tos
- **php** – runs the PHP-FPM interpreter
- **certbot** – obtains and renews Let's Encrypt certificates

## Usage

1. Generate an initial certificate (replace `example.com` with your domain):

```bash
docker-compose run --rm certbot certonly \
  --webroot -w /var/www/certbot \
  -d example.com --register-unsafely-without-email --agree-tos
```

2. Build and start the containers using Docker Compose:


```bash
docker-compose up --build
```


3. Open `https://localhost` (or your domain) in your browser to see the test page displaying the PHP version.

