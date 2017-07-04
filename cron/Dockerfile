FROM ubuntu:latest
MAINTAINER Giulio Collura <giulio.collura@gmail.com>

RUN apt-get update \
    && apt-get install -y --no-install-recommends cron curl \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir /var/log/cron

VOLUME ["/var/log/cron"]

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["cron", "-f"]
