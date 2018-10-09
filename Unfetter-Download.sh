node {
   stage('Download the Project') { // for display purposes
      // Get some code from a GitHub repository
      sh "mkdir -p unfetter-discover12"
      sh "cd unfetter-discover12"
      sh "cd jenkins"
      git "https://github.com/unfetter-discover/jenkins.git"
      git "https://github.com/unfetter-discover/unfetter.git"
      // Get the Unfetter Project.
      // ** NOTE: Needs to be downloaded to ensure images are 
      // **       uploaded and displayed.           
  }
}
