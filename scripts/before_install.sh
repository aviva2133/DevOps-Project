#!/bin/bash
set -e

# עדכון שרת
sudo yum update -y

# התקנת Docker אם לא קיים
if ! [ -x "$(command -v docker)" ]; then
  sudo yum install -y docker
  sudo systemctl start docker
  sudo systemctl enable docker
  sudo usermod -a -G docker ec2-user
fi

# התקנת docker-compose אם לא קיים
if ! [ -x "$(command -v docker-compose)" ]; then
  sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
fi
