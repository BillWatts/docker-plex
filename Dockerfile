FROM ubuntu:16.04
MAINTAINER BILL WATTS <bill@billwatts.codes>

RUN apt-get update && apt-get -y install wget

ARG DOCKER_PLEX_VERSION=1.2.2.2857-d34b464
ENV DOCKER_PLEX_VERSION ${DOCKER_PLEX_VERSION}

RUN wget "https://downloads.plex.tv/plex-media-server/${DOCKER_PLEX_VERSION}/plexmediaserver_${DOCKER_PLEX_VERSION}_amd64.deb" -O plex.deb \
    && dpkg -i plex.deb \
    && rm -f plex.deb

# Expose default plex port.
EXPOSE 32400

ENTRYPOINT ["/usr/sbin/start_pms"]
