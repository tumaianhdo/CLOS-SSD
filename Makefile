base:
	docker build -t tudo/clos-ssd:base hadoop-base

all:
	#docker build -t tudo/clos-ssd:base hadoop-base
	docker build -t tudo/clos-ssd:master hadoop-master
	docker build -t tudo/clos-ssd:slave hadoop-slave
	docker-compose build

.PHONY: test clean

run:
	docker-compose up -d
	echo "http://localhost:9870 for HDFS"
	echo "http://localhost:8088 for YARN"

down:
	docker-compose down
