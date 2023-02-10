# codespace_tomcat
A repo that creates a Codespace with Tomcat, GeoNetwork and Elasticsearch. This needs > 4GB RAM to run.

### Steps to use GeoNetwork
- start and connect to Codespace
- from terminal use `/opt/tomcat/bin/catalina.sh run` to run Tomcat and accessible at [http://localhost:8080/geonetwork](http://localhost:8080/geonetwork)
- run `service elasticsearch start` to sun Elasticsearch and accessible at [http://localhost:9200](http://localhost:9200)

### To do
- [x] install Apache Tomcat inside Ubuntu, Java v8 and [GeoNetwork](https://geonetwork-opensource.org/manuals/trunk/en/overview/index.html) in one Devcontainer repo for Codespace; GeoNetwork uses [WAR file](https://geonetwork-opensource.org/manuals/trunk/en/install-guide/installing-from-war-file.html)
- [x] install Elasticsearch v7.4.2 using the [DEB file](https://www.elastic.co/downloads/elasticsearch)
- [x] [configure](https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-elasticsearch-on-ubuntu-20-04) Elasticsearch - [link](https://geonetwork-opensource.org/manuals/trunk/en/install-guide/installing-index.html), check `service elasticsearch status`
- [x] set ISO 19115 or 19139 Metadata as template, added the templates using `admin`/`admin` profile, added a seperate user profile too
- [ ] start the services on startup and keep them running
- [ ] start adding the contents
- [ ] make the contents and Metadata transferable
