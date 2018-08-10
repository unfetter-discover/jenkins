docker system prune
docker images -a
docker rmi $(docker images -a -q)

docker volume ls
docker volume prune 
