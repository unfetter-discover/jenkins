node {
   stage('Ansible Deploy Test') { // for display purposes
      // Get some code from a GitHub repository
      sh "mkdir -p unfetter-discover13"
      sh "cd unfetter-discover13"
      //sh "cd jenkins"
      //git "https://github.com/unfetter-discover/jenkins.git"
      git "https://github.com/unfetter-discover/unfetter.git"
      sh "cd unfetter"
      sh "cd ansible"
      //sh "cd roles"
      sh "ansible-playbook deploy-dev.yml"
      // Get the Unfetter Project.
      // ** NOTE: Needs to be downloaded to ensure images are 
      // **       uploaded and displayed.           
  }
}
