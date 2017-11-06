FROM redis:alpine
MAINTAINER Jacob Sanford <jsanford@unb.ca>

COPY conf/redis.conf /usr/local/etc/redis/redis.conf
RUN echo 'never' > /sys/kernel/mm/transparent_hugepage/enabled

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
