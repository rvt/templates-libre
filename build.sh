#!/bin/bash

mkdir target
mkdir target/native2ascii

mvn install war:exploded jahia:deploy


# Create a new templateset for Jahia
# mvn archetype:generate -DarchetypeCatalog=http://maven.jahia.org/maven2