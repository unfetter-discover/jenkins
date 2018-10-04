node {
   stage('Test Image') { // for display purposes
      // Testing to see if images have succesfully downloaded
      //sh "cd ../unfetter-discover"
     // sh "cd unfetter"
      //sh "service docker start"
      sh "docker images"
      sh "docker ps"
      sh "docker ps -a"
   }
}
