FROM ubuntu:20.04

ENV DEBIAN_FRONTEND="noninteractive" TZ="Etc/UTC"

# Update the package index and install necessary tools, install necessary apps
RUN apt-get update && apt-get install -y openjdk-8-jdk wget unzip tzdata git curl \
    && apt clean && apt autoclean \
    && mkdir -p /opt/tomcat

# Download and extract Tomcat 8 and GeoNetwork
RUN wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.57/bin/apache-tomcat-8.5.57.tar.gz \
    && tar xzvf apache-tomcat*tar.gz -C /opt/tomcat --strip-components=1 \
    && rm apache-tomcat*tar.gz \
    && wget https://altushost-swe.dl.sourceforge.net/project/geonetwork/GeoNetwork_opensource/v4.2.2/geonetwork.war \
    && mv geonetwork.war /opt/tomcat/webapps \
    && wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.4.2-amd64.deb \
    && dpkg -i elasticsearch*.deb \
    && sed -i 's/#network.host:.*/network.host: localhost/' /etc/elasticsearch/elasticsearch.yml \
    # && service elasticsearch start \
    && rm elasticsearch*.deb

# Set the environment variable for JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

# Expose port 8080 for Tomcat, 9200 for Elasticsearch
EXPOSE 8080 9200

# Start Tomcat when the container is run
# CMD [ "/opt/tomcat/bin/startup.sh", "&&", "tail", "-f", "/dev/null" ]
