#!/bin/bash
cp ./wharfside/neo4j/accessgroups.cypher /opt/neo4j/schemas
cp ./wharfside/neo4j/building.cypher /opt/neo4j/schemas
cp ./wharfside/neo4j/buttoncategories.cypher /opt/neo4j/schemas
cp ./wharfside/neo4j/buttons.production.cypher /opt/neo4j/schemas/buttons.cypher
cp ./wharfside/neo4j/wharfside.production.users.cypher /opt/neo4j/schemas/users.cypher