base:
	docker build -t clos-ssd-base hadoop-base

all:
	#docker build -t tudo/clos-ssd:base hadoop-base
	docker build -t clos-ssd-master hadoop-master
	docker build -t clos-ssd-slave hadoop-slave
	docker build -t clos-ssd-slave-nodata hadoop-slave-nodata
	#docker-compose build

.PHONY: test clean

nodata:
	docker build -t clos-ssd-slave-nodata hadoop-slave-nodata

tag:
	docker tag clos-ssd-master tudo/clos-ssd:master
	docker tag clos-ssd-slave tudo/clos-ssd:slave
	docker tag clos-ssd-slave-nodata tudo/clos-ssd:slave-nodata

run:
	docker-compose up -d
	echo "http://localhost:50070 for HDFS"
	echo "http://localhost:8088 for YARN"

down:
	docker-compose down
