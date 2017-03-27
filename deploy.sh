#!/bin/bash
docker kill simple-web > /dev/null 2>&1
docker rm simple-web > /dev/null 2>&1
docker rmi simple-web:latest > /dev/null 2>&1
docker run -d -p 80:80 --name simple-web simple-web
