# Use an official Ubuntu image as the base image
FROM ubuntu:20.04

# Update the package index and install necessary tools
# Create the /app folder if it doesn't already exist
RUN apt-get update && apt-get install -y openjdk-8-jdk wget \    
    && mkdir -p /app

# Download and extract Tomcat 8
RUN wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.57/bin/apache-tomcat-8.5.57.tar.gz \
    && tar xzf apache-tomcat-8.5.57.tar.gz -C /app \
    && rm apache-tomcat-8.5.57.tar.gz \
    && wget https://github.com/geonetwork/core-geonetwork/archive/refs/tags/4.2.2.tar.gz \
    && tar xzf 4.2.2.tar.gz -C /app/apache-tomcat-8.5.57/webapps/geonetwork \
    && rm 4.2.2.tar.gz

# Set the environment variable for JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

# Expose port 8080 for Tomcat
EXPOSE 8080

# Start Tomcat when the container is run
CMD ["/app/apache-tomcat-8.5.57/bin/catalina.sh", "run"]
