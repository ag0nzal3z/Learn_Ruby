FROM ubuntu:20.04
# Contenedor para probar el codigo de Ruby y RoR
LABEL maintainer="Alberto González"

RUN apt update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y -q ruby-full \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y -q nodejs \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y -q npm \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y -q libsqlite3-dev

RUN gem install sqlite3 \
    && npm install --global yarn \
    && gem install rails \
    && apt install -y vim \
    && apt install -y net-tools


CMD [" "]
