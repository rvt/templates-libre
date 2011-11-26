#!/bin/bash

# THIS SEEMS TO BE NOT NEEDED ANYMORE
#mkdir target
#mkdir target/native2ascii

mvn clean package 
mvn jahia:deploy


# Create a new templateset for Jahia, or any other module
# mvn archetype:generate -DarchetypeCatalog=http://maven.jahia.org/maven2