#!/bin/bash

set -e

docker rmi edsolis/@project.artifactId@:@project.version@
docker pull edsolis/@project.artifactId@:@project.version@
