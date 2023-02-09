# codespace_tomcat
A repo that creates a Codespace with Tomcat, GeoNetwork and Elasticsearch. 

### Steps to install GeoNetwork
- I just made this repo with the Devcontainer and use it to build Codespace
- it installs Apache Tomcat inside Ubuntu and GeoNetwork using [WAR file](https://geonetwork-opensource.org/manuals/trunk/en/install-guide/installing-from-war-file.html)
- from terminal use `/opt/tomcat/bin/catalina.sh run` to run Tomcat, this will start installing GeoNetwork available at [http://localhost:8080/geonetwork](http://localhost:8080/geonetwork)

### To do
- [x] install Elasticsearch from inside the JSON
- [ ] configure Elasticsearch - [link](https://geonetwork-opensource.org/manuals/trunk/en/install-guide/installing-index.html)
- [ ] set ISO 19115 or 19139 Metadata as template
- [ ] start adding the contents
- [ ] make the contents and Metadata transferable
