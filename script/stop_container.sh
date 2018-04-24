#!/bin/bash
container_name=$1
docker container stop ${container_name}
docker container rm ${container_name}