#!/bin/bash


node_app=`docker ps -a | grep nodeapp | awk '{print $NF}'`
if [ $node_app=='nodeapp' ]; then
    echo "nodeapp is running, lets delete"
        docker rm -f nodeapp
fi
docker run -d -p 8080:8080 --name=nodeapp harishmedasani/node:1.0
