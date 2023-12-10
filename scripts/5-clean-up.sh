docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q) #remove all dangling containers
# docker rmi $(docker images -f "dangling=true" -q)
docker rmi hadoop_docker
# A handy script to remove all unused/dangling images and containers.
docker network rm -f hadoop