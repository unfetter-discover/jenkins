node {
   stage('Clean Image') { // for display purposes
      // Testing to see if images have succesfully been removed
      sh "docker system prune"
      sh "docker volume prune"
      sh "docker ps"
      //sh "docker rm \$(docker ps -a -q)"
      //sh "docker rmi \$(docker images -q)"
   }
   stage('Download the Project') { // for display purposes
      // Get some code from a GitHub repository
      sh "mkdir -p unfetter-discover"
      sh "cd unfetter-discover"
      //sh "git clone https://github.com/unfetter-discover/unfetter.git"
      //sh "git clone https://github.com/unfetter-discover/unfetter-ui.git"
      //sh "git clone https://github.com/unfetter-discover/unfetter-store.git"
      //sh "git clone https://github.com/unfetter-discover/stix2pattern.git"
      sh "git fetch --all && git pull"
      // Get the Unfetter Project.
      // ** NOTE: Needs to be downloaded to ensure images are 
      // **       uploaded and displayed.           
  }
  stage('Ansible Deploy Test') {
      // changes directory to Ansible and runs playbook for Unfetter to start
      sh "cd unfetter/ansible && ansible-playbook deploy-dev.yml"
  }
  stage('Test Image') { // for display purposes
      // Testing to see if Unfetter has succesfully downloaded.  Shows the images for the running containers.
      sh "docker images"
      sh "docker container ls"
      //sh "docker ps"
      //sh "docker ps -a"
   }
   stage ("Docker Creation Verification Test") {
        if ( "docker inspect unfetter-discover-api:0.3.10.beta.1 | grep -i created" == "true" ) {
        echo "Image unfetter-discover-api:0.3.10.beta.1 currently exists and has been successfully created." }
        else {
        echo "Image unfetter-discover-api:0.3.10.beta.1 does not exist and has not been successfully created."}
    }
    stage ("Docker Container Running Test") {
        //if ( "docker inspect 9c475e692abf  | grep -i running" == "true" ) {
        if ("docker ps -a | grep -i exited | grep -v -E (processor|openssl|williamyeh") {
        echo "Container currently exists and is successfully running." }
        //else {
        //echo "Container 9c475e692abf does not exist and is not successfully running."}
    }
    stage ("UI-Test") {
        sh "curl -k https://localhost:80/#"
    }
}
