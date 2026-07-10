FROM redis:8.2-alpine

ENV REDIS_CONF_FILE="/usr/local/etc/redis/redis.conf"
ENV REDIS_MAX_MEMORY="32000000000"

COPY ./build /build
RUN mv /build/scripts /scripts && \
  mkdir -p /usr/local/etc/redis && \
  mv /build/conf/redis.conf "$REDIS_CONF_FILE"

ENTRYPOINT /scripts/run.sh

LABEL ca.unb.lib.generator="redis" \
  org.opencontainers.image.title="drupal.redis.lib.unb.ca" \
  org.opencontainers.image.description="drupal.redis.lib.unb.ca is the redis application serving drupal instances at UNB Libraries." \
  org.opencontainers.image.vendor="University of New Brunswick Libraries" \
  org.opencontainers.image.authors="UNB Libraries <libsupport@unb.ca>" \
  org.opencontainers.image.source="https://github.com/unb-libraries/drupal.redis.lib.unb.ca" \
  org.opencontainers.image.version="$VERSION" \
  org.opencontainers.image.revision="$VCS_REF" \
  org.opencontainers.image.created="$BUILD_DATE"
