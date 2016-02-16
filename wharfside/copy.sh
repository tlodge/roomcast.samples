#!/bin/sh
cp -R ./red/flows.json /opt/red/
mkdir -p /opt/neo4j/schemas
cp -R ./neo4j/*.cyper /opt/neo4j/schemas
