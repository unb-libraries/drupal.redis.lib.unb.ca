FROM redis:alpine
MAINTAINER Jacob Sanford <jsanford@unb.ca>

COPY conf/redis.conf /usr/local/etc/redis/redis.conf

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]

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
