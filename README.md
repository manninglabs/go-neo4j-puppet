# neo4j + go puppet module for Vagrant

## Overview

Installs Go and Neo4j

## Usage

1. Start (automatically provisions)
````
vagrant up
```

2. Configure Neo4j
````
vagrant ssh
sudo vim /var/lib/neo4j/conf/neo4j-server.properties
````
Now uncomment the line: ``org.neo4j.server.webserver.address=0.0.0.0
`` so Neo4j is exposed to the host running this vagrant box

Restart Neo4j
```` 
service neo4j-service restart
````

3. Test Neo4j: On your host machine, hit localhost:7474 to ensure everything works.

4. Test Go
````
vagrant ssh
go version 
go install hello
hello
````

