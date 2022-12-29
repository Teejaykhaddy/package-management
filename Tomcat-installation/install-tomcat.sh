#!/bin/bash
# Use this script to install tomcat in rehat servers
echo delete the failed version of tomcat
sudo rm -rf /opt/tomcat9
echo assign a hostname to your server 
sudo hostname tomcat
# install Java JDK 1.8+ as a pre-requisit for tomcat to run.
cd /opt 
sudo yum install git wget -y
sudo yum install java-1.8.0-openjdk-devel -y
# Download tomcat software and extract it.
sudo yum install wget unzip -y

sudo wget https://dlcdn.apache.org/tomcat/tomcat-11/v11.0.0-M1/bin/apache-tomcat-11.0.0-M1.tar.gz
sudo tar -xvf apache-tomcat-11.0.0-M1.tar.gz
sudo rm apache-tomcat-11.0.0-M1.tar.gz
sudo mv apache-tomcat-11.0.0-M1 tomcat11
sudo chmod 777 -R /opt/tomcat11
sudo chown ec2-user -R /opt/tomcat11
sh /opt/tomcat11/bin/startup.sh
# create a soft link to start and stop tomcat
sudo ln -s /opt/tomcat11/bin/startup.sh /usr/bin/starttomcat
sudo ln -s /opt/tomcat11/bin/shutdown.sh /usr/bin/stoptomcat
sudo yum update -y
starttomcat
echo "end on tomcat installation"
#========

#2. Start of tomcat configuration 


#Tomcat server configuration:
find / -name server.xml context.xml
vim /opt/tomcat9/conf/server.xml
vi /opt/tomcat9/webapps/manager/META-INF/context.xml
vi /opt/tomcat9/conf/tomcat-user.xml  # to add user

	<user username="landmark" password="admin" roles="manager-gui,admin-gui"/>
	

/opt/tomcat9/conf/context.xml

 vi /opt/tomcat9/webapps/manager/META-INF/context.xml
  
  vi /opt/tomcat9/conf/tomcat-user.xml  # to add user
  
	
	username YourName password=PassWord   roles=manager-gui
	
	
