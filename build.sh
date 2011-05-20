#!/bin/bash
mkdir target
mkdir target/native2ascii
mvn install war:exploded jahia:deploy
