FROM redis:7-alpine
MAINTAINER UNB Libraries <libsupport@unb.ca>

ENV REDIS_CONF_FILE /usr/local/etc/redis/redis.conf
ENV REDIS_MAX_MEMORY 32000000000

COPY ./build /build
RUN mv /build/scripts /scripts && \
  mkdir -p /usr/local/etc/redis && \
  mv /build/conf/redis.conf "$REDIS_CONF_FILE"

ENTRYPOINT /scripts/run.sh

LABEL ca.unb.lib.generator="redis" \
  com.microscaling.docker.dockerfile="/Dockerfile" \
  com.microscaling.license="MIT" \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.description="drupal.redis.lib.unb.ca is the redis application serving drupal instances at UNB Libraries." \
  org.label-schema.name="drupal.redis.lib.unb.ca" \
  org.label-schema.schema-version="1.0" \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.vcs-url="https://github.com/unb-libraries/drupal.redis.lib.unb.ca" \
  org.label-schema.vendor="University of New Brunswick Libraries" \
  org.label-schema.version=$VERSION \
  org.opencontainers.image.source="https://github.com/unb-libraries/drupal.redis.lib.unb.ca"
