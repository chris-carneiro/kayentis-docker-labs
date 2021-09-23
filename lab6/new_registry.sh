#!/bin/bash


# registry:2 specify custom registry to docker
docker run -d -p 5000:5000 --name registry registry:2


docker login localhost:5000  -u "user" -p "admin"  

docker build -t  localhost:5000/user/my-app .

docker push localhost:5000/user/my-app
