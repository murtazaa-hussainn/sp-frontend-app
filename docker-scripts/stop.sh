#!bin/bash

if [ $( docker ps -a | grep frontend | wc -l ) -gt 0 ]; then
  docker stop frontend
  docker rm frontend
  docker rmi 058264531795.dkr.ecr.us-east-1.amazonaws.com/sp-frontend-app:latest
fi

exit 0
