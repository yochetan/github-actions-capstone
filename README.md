# GitHub Actions Capstone

![PR Pipeline](https://github.com/yochetan/github-actions-capstone/actions/workflows/pr-pipeline.yml/badge.svg)

![Main Pipeline](https://github.com/yochetan/github-actions-capstone/actions/workflows/main-pipeline.yml/badge.svg)

![Health Check](https://github.com/yochetan/github-actions-capstone/actions/workflows/health-check.yml/badge.svg)

A simple Node.js Express application built for practicing GitHub Actions CI/CD workflows.

## Features

- Node.js Express application
- Dockerized application
- Reusable GitHub Actions workflows
- PR validation pipeline
- Main branch deployment pipeline
- Scheduled health checks
- Production deployment using GitHub Environments

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
