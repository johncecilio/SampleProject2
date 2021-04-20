FROM msrbase

MAINTAINER John Narvaez

COPY ./assets/IS/Packages/AAATest3 /sag103/IntegrationServer/instances/default/packages/
COPY ./application.properties /sag103/IntegrationServer/application.properties

RUN chmod -R 777 /sag107/
