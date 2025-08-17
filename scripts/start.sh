#!/bin/bash
set -e

cd /home/ec2-user/app

echo "Stopping old containers..."
docker-compose down || true

echo "Starting new containers..."
docker-compose up -d
