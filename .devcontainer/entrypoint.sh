#!/bin/sh

# Start Tomcat
/opt/tomcat/bin/startup.sh run

# Start Elasticsearch
service elasticsearch start

# Keep the script running
tail -f /dev/null
