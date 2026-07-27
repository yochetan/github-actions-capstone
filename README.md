# GitHub Actions Capstone

A simple Node.js Express application built for practicing GitHub Actions CI/CD workflows.

## Features

- Express web server
- Health endpoint
- Docker support
- Simple health check test
- Ready for GitHub Actions pipelines

## Endpoints

| Endpoint | Description |
|----------|-------------|
| / | Home page |
| /health | Health check |

## Run Locally

Install dependencies:

```bash
npm install
```

Start the application:

```bash
npm start
```

Visit:

```
http://localhost:3000
```

Health check:

```
http://localhost:3000/health
```

## Docker

Build:

```bash
docker build -t github-actions-capstone .
```

Run:

```bash
docker run -p 3000:3000 github-actions-capstone
```

## Test

```bash
./test.sh
```