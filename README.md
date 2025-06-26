# nginx PHP Test Setup


The configuration files contain the example domain `eniware.info`. To
change it to your own domain run:

```bash
./set-domain.sh yourdomain.example
```

1. Generate an initial certificate for your domain:

- **nginx** – serves the PHP page over HTTPS
- **php** – runs the PHP-FPM interpreter
- **certbot** – obtains and renews Let's Encrypt certificates

## Usage


The configuration files contain the example domain `eniware.info`. To
change it to your own domain run:

```bash
./set-domain.sh yourdomain.example
```

1. Generate an initial certificate for your domain:


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

