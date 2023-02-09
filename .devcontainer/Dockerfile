# Use an official Ubuntu image as the base image
FROM ubuntu:20.04

ENV DEBIAN_FRONTEND="noninteractive" TZ="Etc/UTC"

# Update the package index and install necessary tools, install necessary apps
RUN apt-get update && apt-get install -y openjdk-8-jdk wget unzip tzdata git \
    && mkdir -p /opt/tomcat \
    && mkdir -p ~/app

# Download and extract Tomcat 8 and GeoNetwork
RUN wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.57/bin/apache-tomcat-8.5.57.tar.gz \
    && tar xzvf apache-tomcat*tar.gz -C /opt/tomcat --strip-components=1 \
    && rm xzvf apache-tomcat*tar.gz \
    && wget https://altushost-swe.dl.sourceforge.net/project/geonetwork/GeoNetwork_opensource/v4.2.2/geonetwork.war \
    && mv geonetwork.war /opt/tomcat/webapps \
    && rm geonetwork.war \
    && ln -s ~/app /opt/tomcat/webapps

# Set the environment variable for JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

# Expose port 8080 for Tomcat
EXPOSE 8080

# Start Tomcat when the container is run
CMD ["/app/apache-tomcat-8.5.57/bin/catalina.sh", "run"]
