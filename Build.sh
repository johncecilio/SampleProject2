#!/bin/sh
#

docker build -t mymicrosvc:v1 -f Dockerfile .
docker tag mymicrosvc:v1 $(env.registry)/$(env.username)/mymicrosvc:v1
oc login -u $(username) -p $(password)
oc project myproject
docker login -u $(env.username) -p $(oc whoami -t) $(env.registry)
docker push $(env.registry)/$(env.username)/mymicrosvc:v1
