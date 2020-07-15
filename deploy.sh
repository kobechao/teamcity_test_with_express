#!/bin/sh
docker image prune -f
docker build -t tc_node .

[ "$(docker ps -a | grep tc_node)" ] && sudo docker stop tc_node

docker run -it -d -p 3000:3000 --name tc_node --rm tc_node