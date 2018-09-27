sudo su
yum update -y
yum install -y wget rpm java-1.8.0-openjdk-devel
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.ci.org/redhat/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat/jenkins/io.key
yum install -y jenkins
service jenkins start
#Web browser needs to be launched.  Type http://your.private.ip.address:8080
#As mentioned, enter the password found in the folder location.  The location for the password will be found at cat /var/lib/jenkins/secrets/initialAdminPassword
#

