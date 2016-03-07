#!/bin/sh
sudo cp -R ./red/flows.json /opt/red/
sudo mkdir -p /opt/neo4j/schemas
sudo mkdir -p /opt/neo4j/removed
sudo cp -R ./neo4j/*.cypher /opt/neo4j/schemas
cd ~/docker/neo4j && sudo ./reset.sh
