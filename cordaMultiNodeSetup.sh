#!/bin/bash

printf "Corda MultiNode SetUp with one Notary"



nodenum=$1


export noOfNodes=$nodenum

echo $noOfNodes
printf "Calling docker compose to start the nodes"



j2 doc.j2.yml -o dockera.yaml

docker-compose -f dockera.yaml up -d
