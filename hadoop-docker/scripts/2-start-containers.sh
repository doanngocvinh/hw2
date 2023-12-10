#!/bin/bash

docker run -it hadoop_docker /bin/bash
# apt-get install python3


docker network create hadoop

docker run -itd \
           --net=hadoop \
           -p 9870:9870 \
           -p 8088:8088 \
           --name namenode \
           --hostname namenode \
           hadoop_docker 


docker run -itd --net hadoop --hostname datanode1 --name datanode1 hadoop_docker
docker run -itd --net hadoop --hostname datanode2 --name datanode2 hadoop_docker


docker exec namenode sh -c "hdfs namenode -format"
docker exec -it namenode bash
# start-all.sh

