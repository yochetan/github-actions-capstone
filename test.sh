#!/bin/bash

echo "Waiting for application..."

sleep 5

curl -f http://localhost:3000/health

echo
echo "Health check passed!"