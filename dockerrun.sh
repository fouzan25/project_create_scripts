#!/bin/bash
docker-compose down
echo "Starting app..."
docker-compose up --build -d

sleep 1

echo "Node App running http://localhost:"
echo "loggs are coming soon be mentally prepared :) ..."
docker logs -f --tail 10 $1
