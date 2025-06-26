# nginx PHP Test Setup

This repository contains a simple Docker Compose setup with two containers:

- **nginx** – serves a PHP-based test page
- **php** – runs the PHP-FPM interpreter

## Usage

1. Build and start the containers using Docker Compose:

```bash
docker-compose up --build
```

2. Open `http://localhost` in your browser to see the test page displaying the PHP version.

