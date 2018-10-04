node {
   stage('Clean Image') { // for display purposes
      // Testing to see if images have succesfully been removed
      //sh "cd ../unfetter-discover"
     // sh "cd unfetter"
      //sh "docker stop \$(docker ps -a -q)"
      sh "docker system prune"
      sh "docker ps"
      //sh "docker rm \$(docker ps -a -q)"
      //sh "docker rmi \$(docker images -q)"
   }
}
