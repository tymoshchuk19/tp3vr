FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y bash-completion software-properties-common sudo curl ssh git nano nodejs npm net-tools iputils-ping
COPY docker-entrypoint.sh /scripts/docker-entrypoint.sh
RUN ["chmod", "+x", "/scripts/docker-entrypoint.sh"]
ENTRYPOINT ["/scripts/docker-entrypoint.sh"]