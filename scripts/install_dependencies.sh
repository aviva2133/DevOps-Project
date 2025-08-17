#!/bin/bash
sudo yum update -y
sudo yum install -y docker
sudo yum install -y docker-compose

# להפעיל את Docker אם לא רץ
sudo service docker start
sudo usermod -aG docker ec2-user
