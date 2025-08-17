#!/bin/bash
set -e

cd /home/ec2-user/app

echo "Stopping containers..."
docker-compose down || true
