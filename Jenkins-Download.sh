node {
   stage('Jenkins Download') { // for display purposes
      // Installation for Jenkins start
      //sh "cd Jenkins-Download"
      sh "sudo su"
      sh "yum update -y"
      sh "yum install -y wget rpm java-1.8.0-openjdk-devel"
      sh "wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.ci.org/redhat/jenkins.repo"
      sh "rpm --import https://pkg.jenkins.io/redhat/jenkins/io.key"
      sh "yum install -y jenkins"
      sh "service jenkins start"
   }
}
