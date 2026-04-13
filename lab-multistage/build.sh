#!/bin/bash

IMAGE_NAME="lab-multistage"
IMAGE_TAG="latest"
CONTAINER_NAME="multistage-test"
PORT=3000

docker build -t $IMAGE_NAME:$IMAGE_TAG .

if docker ps -a | grep -q "$CONTAINER_NAME"; then
	echo "Container $CONTAINER_NAME already exists - stopping and removing it"
	docker stop $CONTAINER_NAME
	docker rm $CONTAINER_NAME
fi

docker run -d -p $PORT:$PORT --name $CONTAINER_NAME $IMAGE_NAME:$IMAGE_TAG
sleep 2

if curl -s http://localhost:$PORT > /dev/null; then
    echo "SUCCESS — container is running and responding on port $PORT"
else
    echo "FAILED — container is not responding"
fi
