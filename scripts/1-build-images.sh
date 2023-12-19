#!/bin/bash
docker build . -t hadoop_base:latest

docker tag yanyun/hadoop:1.2 hadoop_base:latest