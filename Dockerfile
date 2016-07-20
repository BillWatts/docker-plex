FROM ubuntu:14.04
MAINTAINER BILL WATTS <bill@billwatts.codes>

ARG DOCKER_PLEX_VERSION=1.0.2.2413-7caf41d
ENV DOCKER_PLEX_VERSION ${DOCKER_PLEX_VERSION}

RUN sudo apt-get update && sudo apt-get install curl -y

RUN curl -sSL "https://downloads.plex.tv/plex-media-server/${DOCKER_PLEX_VERSION}/plexmediaserver_${DOCKER_PLEX_VERSION}_amd64.deb" -o plex.deb \
    && dpkg -i plex.deb \
    && rm -f plex.deb

# Expose default plex port.
EXPOSE 32400

ENTRYPOINT ["/usr/sbin/start_pms"]
