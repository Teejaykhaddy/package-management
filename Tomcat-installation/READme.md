#  **<span style="color:green">Landmark Technologies, Ontario, Canada.</span>**
### **<span style="color:green">Contacts: +1437 215 2483<br> WebSite : <http://mylandmarktech.com/></span>**
### **Email: mylandmarktech@gmail.com**



## Apache Tomcat Installation And Setup In AWS EC2 Redhat Instance.
##### Prerequisite
+ AWS Acccount.
+ Create Redhat EC2 T2.micro Instance.
+ Create Security Group and open Tomcat ports or Required ports.
   + 8080 ..etc
+ Attach Security Group to EC2 Instance.
+ Install java openJDK 1.8+

### Install Java JDK 1.8+ 

``` sh
# install Java JDK 1.8+ as a pre-requisit for tomcat to run.
cd /opt 
sudo yum install git wget -y
sudo yum install java-1.8.0-openjdk-devel -y
# Download tomcat software and extract it.
sudo yum install wget unzip -y
```
### Install Tomcat version 11.0.0-M1
``` sh
sudo wget https://dlcdn.apache.org/tomcat/tomcat-11/v11.0.0-M1/bin/apache-tomcat-11.0.0-M1.tar.gz
sudo tar -xvf apache-tomcat-11.0.0-M1.tar.gz
sudo rm -rf apache-tomcat-11.0.0-M1.tar.gz
sudo mv apache-tomcat-11.0.0-M1 tomcat11
sudo chmod 777 -R /opt/tomcat11
sudo chown ec2-user -R /opt/tomcat11
sh /opt/tomcat11/bin/startup.sh
# create a soft link to start and stop tomcat
sudo ln -s /opt/tomcat11/bin/startup.sh /usr/bin/starttomcat
sudo ln -s /opt/tomcat11/bin/shutdown.sh /usr/bin/stoptomcat
starttomcat
sudo su - ec2-user
```

