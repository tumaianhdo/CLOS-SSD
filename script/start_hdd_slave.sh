#!/bin/bash
container_name=$1
docker run -dit -p 50075:50075 -p 8042:8042 --name ${container_name} --hostname ${container_name} --mount type=bind,source=/hdd/data,target=/tmp/hadoop-root/dfs/data --network clos-net tudo/clos-ssd:slave