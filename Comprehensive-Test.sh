node {
   stage('Clean Image') { // for display purposes
      // Testing to see if images have succesfully been removed
      sh "docker system prune"
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
      sh "docker ps"
      sh "docker ps -a"
   }
}
