#!/bin/bash

set -e

echo "Remove local image"
docker rmi edsolis/@project.artifactId@:@project.version@
echo "Pull Image from repository"
docker pull edsolis/@project.artifactId@:@project.version@
