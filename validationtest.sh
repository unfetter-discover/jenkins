#cd unfetter
#sudo service docker start
#docker-compose -f docker-compose.yml -f docker-compose.development.yml up

#RUNNING=$(docker inspect --format="{{.State.Running}}" $CONTAINER 2> /dev/null)
#if [ $? -eq 1]; then
 # echo "UNKNOWN - $CONTAINER does not exist."
 # exit 3
#fi

#if ["$RUNNING" == "false" ]; then
 # echo "CRITICAL - $CONTAINER is not running."
  #exit 2
#fi
sudo service docker start
docker images 
docker container ls
docker inspect jenkins
docker port jenkins
