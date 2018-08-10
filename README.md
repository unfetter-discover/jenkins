# jenkins
Directory that creates the Jenkins EC2 instance.

1. Create a new CentOS instance in the project per the instructions in Confluence: https://confluence.evoforge.org/display/WELCOME/How+to+Launch+an+EC2+Instance.
2.	Once the instance is up and running, SSH into the box using user name and password
3.	sudo su
4.	yum update –y
5.	yum install –y wget rpm java-1.8.0-openjdk-devel
6.	wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
7.	rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
8.	yum install –y jenkins
9.	service jenkins start
10.	Launch a web browser and type http://your.private.ip.address:8080
11.	As prompted, enter the password found in /var/lib/jenkins/secrets/initialAdminPassword. Use the following command to display this password:
a.	cat /var/lib/jenkins/secrets/initialAdminPassword
12.	The Jenkins installation script directs you to the “Customize Jenkins” page > click the blue Install suggested plugins box.  This process takes a couple of minutes.
13.	Create First Admin User > Save and Finish
14.	Start using Jenkins
15.	In the left column click Manage Jenkins > Manage Plugins
16.	Click on the Available tab, and then enter “Amazon EC2” at the top right
17.	Check the Amazon EC2 box, then click Install without restart. This process take a couple of minutes
18.	Once everything shows Success, click Manage Jenkins > Configure system
19.	Scroll to the very bottom of the page and click Add a new cloud > Amazon EC2
20.	Provide a name for your server
21.	For Amazon EC2 Credentials, click Add > Jenkins
22.	For the Jenkins Credentials Provider:
a.	Click Kind field
b.	From the drop-down, select AWS Credentials
c.	Under IAM Role Support, click Advanced…
d.	In the IAM Role To Use, type “devcraft-user” sans the quotations
e.	Add
23.	Return to the Amazon EC2 Credentials field
a.	Click the drop-down
b.	Select :devcraft-user
24.	Check the box for Use EC2 instance profile to obtain credentials
25.	Choose the us-east-1 region.  No other region will work as there is no infrastructure configured in any other region in eVo at time of publishing
26.	DO NOT enter any information into the EC2 Key Pair’s Private Key field
27.	Click Save at the bottom to save the configuration.  
28.	You’ll be returned to the main screen.  Click Manage Jenkins > Configure System and scroll to the bottom of the screen.
29.	Click Test Connection.  
30.	Proceed with creating the AMIs as needed.
