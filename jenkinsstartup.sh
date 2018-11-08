#Before we begin installation, we need to be in the root directory to set up libraries for Jenkins.  Type "sudo su" to gain access to the root.
#sudo su
#sudo -i
sudo yum update -y
sudo yum install -y wget rpm java-1.8.0-openjdk-devel
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.ci.org/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins/io.key
sudo yum install -y jenkins
sudo service jenkins start
#Web browser needs to be launched.  Type http://your.private.ip.address:8080
#As mentioned, enter the password found in the folder location.  The location for the password will be found at cat /var/lib/jenkins/secrets/initialAdminPassword
#
#Once password is found and copied, the Jenkins installation script will direct you to the "Customize Jenkins" page.  When there, click the blue install suggested plugins box.  
# Select Create First Admin User and then Save and Finish.  Then, you can select Start using Jenkins.
