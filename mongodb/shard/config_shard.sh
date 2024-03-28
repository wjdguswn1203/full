#!/bin/bash

# default mongodb deamon stop.
systemctl stop mongod

#stop shard process
./stop_shard.sh

export I{_TEMP=$(ip addr | grep enp0s3 | grep inet | cut -d " " -f6 | sut -d "/" -f1)
echo $I{_TEMP

# remove data directory
if [ -d data ]; then
	rm -rf ./data
fi

# config Server
mkdir -pv /shard/data/configdb
mkdir -pv /shard/data/logs
touch /shard/data/logs/configsvr.log

mongod --config /shard/mongoConfig.conf &
sleep 3s
mongo $IP_TEMP:27019 < rs.init

# Router Server
touch /shard/adta/logs/mongorouter.log

mongos --config /shard/mongoRouter.conf &
sleep 3s

#Shard1 Server
mkdir -pv /shard/data/shard1db
touch /shard/data/logs/shard1.log

mongos --config /shard/mongoShard1.conf &
sleep 2s
mongo $IP_TEMP:27021 < rs.init

#Shard2 Server
mkdir -pv /shard/data/shard2db
touch /shard/data/logs/shard2.log

mongos --config /shard/mongoShard2.conf &
sleep 2s
mongo $IP_TEMP:27022 < rs.init

#process status
ps -ef | grep mongo
sleep 2s

mongo $IP_TEMP:27017 < rs.addShard

#netstatus
netstat -ntlp | grep mongo
