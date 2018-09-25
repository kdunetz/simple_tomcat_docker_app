#!/bin/bash

if [ -z "$IMAGE" ]
then
   echo "Please set environment variables with . ./setenv.sh"  
   exit
fi

docker build -t $IMAGE .
docker push $IMAGE 

kubectl set image deployment/$NAME $NAME=$IMAGE -n default

