#!/bin/bash

mvn install war:exploded jahia:deploy


# Create a new templateset for Jahia
# mvn archetype:generate -DarchetypeCatalog=http://maven.jahia.org/maven2