FROM websphere-liberty

COPY server.xml /config/server.xml

RUN installUtility install --acceptLicense defaultServer
COPY target/acmeair-flightservice-springboot-2.1.1-SNAPSHOT.jar /config/apps/

#ENV DEBIAN_FRONTEND=noninteractive
#RUN apt-get update && apt-get install -y tzdata && ln -fs /usr/share/zoneinfo/America/Chicago /etc/localtime && dpkg-reconfigure --frontend noninteractive tzdata




