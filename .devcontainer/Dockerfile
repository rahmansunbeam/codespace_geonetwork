FROM ubuntu:20.04

# Update the package index
RUN apt-get update

# Install OpenJDK 8
RUN apt-get install -y openjdk-8-jdk

# Install Tomcat
RUN apt-get install -y tomcat8

# Start Tomcat
CMD service tomcat8 start && tail -f /var/log/tomcat8/catalina.out