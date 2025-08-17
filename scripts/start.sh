#!/bin/bash
set -e

# מעבר לתיקיית הפרויקט שה־CodeDeploy הוריד
cd /home/ec2-user/DevOps-Project

echo "Stopping old containers..."
sudo docker-compose down || true

echo "Starting new containers..."
sudo docker-compose up -d
