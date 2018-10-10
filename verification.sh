for image in $(docker images -q);
do docker rmi $image;
done

