# nginx PHP Test Setup


This repository contains a simple Docker Compose setup with three containers:


- **nginx** – serves the PHP page over HTTPS
- **php** – runs the PHP-FPM interpreter
- **certbot** – obtains and renews Let's Encrypt certificates

## Usage


The configuration files contain the example domain `eniware.info`. Run the
following command **before obtaining certificates** to replace it with your
own domain:


```bash
./set-domain.sh yourdomain.example
```


1. Generate an initial certificate for your domain (this is required before the
   containers can start successfully):


```bash
docker-compose run --rm certbot certonly \
  --webroot -w /var/www/certbot \
  -d eniware.info --register-unsafely-without-email --agree-tos

```

If the certificate does not exist when nginx starts, the container will exit
and your browser may display a **502** error. Make sure the above command
completes successfully.

2. Build and start the containers using Docker Compose:


```bash
docker-compose up --build
```


3. Open `https://localhost` (or your domain) in your browser to see the test page displaying the PHP version.

