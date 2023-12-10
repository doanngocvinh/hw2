#!/bin/bash

docker run -it docker_hadoop /bin/bash
# apt-get install python3


docker network create hadoop

docker run -itd \
           --net=hadoop \
           -p 9870:9870 \
           -p 8088:8088 \
           --name hadoop-master \
           --hostname hadoop-master \
           docker_hadoop 


docker run -itd --net hadoop --hostname hadoop-slave1 --name hadoop-slave1 docker_hadoop
docker run -itd --net hadoop --hostname hadoop-slave2 --name hadoop-slave2 docker_hadoop


docker exec -it hadoop-master bash
# start-all.sh

