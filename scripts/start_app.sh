#!/bin/bash
cd /home/ec2-user/app

# לעצור קונטיינרים ישנים אם קיימים
sudo docker-compose down || true

# להרים את האפליקציה מחדש
sudo docker-compose up -d
