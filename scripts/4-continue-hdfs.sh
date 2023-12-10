#!/bin/bash

#namenode
docker start hadoop-master

#hadoop-slave 1
docker start hadoop-slave1 

#hadoop-slave 2
docker start hadoop-slave2 

#namenode for operating hadoop cluster(attached to current terminal)
docker exec -it namenode bash
# start-all.sh

