#!/bin/bash

docker login localhost:5000  -u "stored" -p "admin"  

docker build -t  localhost:5000/stored/my-persisted-app .

docker push localhost:5000/stored/my-persisted-app
