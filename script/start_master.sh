#!/bin/bash
docker run -dit -p 50070:50070 -p 8080:8080 -p 19888:19888 -p 8188:8188 --name master --hostname master --network clos-net tudo/clos-ssd:master