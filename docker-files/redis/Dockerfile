FROM redis:6.0.9-alpine

COPY redis.conf /usr/local/etc/redis/redis.conf

RUN apk update && apk add --no-cache tini

CMD ["tini", "--", "redis-server", "/usr/local/etc/redis/redis.conf"]
