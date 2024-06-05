#!/bin/bash

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 058264531795.dkr.ecr.us-east-1.amazonaws.com

docker pull 058264531795.dkr.ecr.us-east-1.amazonaws.com/sp-frontend-app-ecr:latest

docker run --env-file /opt/sp-frontend-app/.env -dit -p 4000:4000 --restart on-failure:5 --name frontend 058264531795.dkr.ecr.us-east-1.amazonaws.com/sp-frontend-app-ecr:latest
