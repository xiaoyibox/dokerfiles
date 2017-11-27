#!/bin/sh
# clean container
#container
container=$1
echo "Stop and Remove container ${container} starting..."
docker stop ${container}
docker rm ${container}
echo "Stop and Remove container ${container} end..."