#!/bin/sh
#

docker build -t mymicrosvc:v1 -f Dockerfile .
docker tag mymicrosvc:v1 $(registry)/$(username)/mymicrosvc:v1
oc login -u $(username) -p $(password)
oc project myproject
docker login -u $(username) -p $(oc whoami -t) $(registry)
docker push $(registry)/$(username)/mymicrosvc:v1
