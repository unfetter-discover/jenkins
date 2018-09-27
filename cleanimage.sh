docker system prune
# Deletes all the containers
docker rm $(docker ps -a -q)
# Deletes all the images
docker rmi $(docker images -q)
