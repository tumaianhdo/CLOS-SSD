#!/bin/bash
sudo mkfs -t ext4 /dev/nvme1n1
sudo mkdir /hdd
sudo mount /dev/nvme1n1 /hdd
sudo chmod 777 /hdd
mkdir /hdd/data
