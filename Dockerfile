FROM redis:alpine
MAINTAINER Jacob Sanford <jsanford@unb.ca>

COPY conf/redis.conf /usr/local/etc/redis/redis.conf

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
