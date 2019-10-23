FROM websphere-liberty:springBoot2
COPY --chown=1001:0 server.xml /config/server.xml
COPY --chown=1001:0 target/acmeair-flightservice-springboot-2.1.1-SNAPSHOT.jar /config/apps/

USER root
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y tzdata && ln -fs /usr/share/zoneinfo/America/Chicago /etc/localtime && dpkg-reconfigure --frontend noninteractive tzdata
USER 1001

RUN configure.sh
