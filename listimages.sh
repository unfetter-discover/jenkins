docker images
docker ps
docker ps -a
docker rmi $(docker images -f "dangling=true" -q)

