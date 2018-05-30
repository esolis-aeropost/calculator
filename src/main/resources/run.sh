#!/bin/bash

set -e

if [ "$(docker ps | grep @project.artifactId@)" ]; then
	echo "Stop app container"
	docker stop @project.artifactId@
fi

if [ "$(docker ps -a | grep @project.artifactId@)" ]; then
	echo "Remove app container"
	docker rm @project.artifactId@
fi

if [ "$(docker images -q edsolis/@project.artifactId@ | uniq)" ]; then
	echo "Remove all images"
	docker rmi -f $(docker images -q edsolis/@project.artifactId@ | uniq)
fi

echo "Pull image from repository"
docker pull edsolis/@project.artifactId@:@project.version@
echo "Run container"
docker run -d --name @project.artifactId@ -p 9000:9000 -p 9092:9092 edsolis/@project.artifactId@:@project.version@
