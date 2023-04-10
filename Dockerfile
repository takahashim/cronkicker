# One-liner Usage:
#   `docker run -it cronkicker sh -c "echo '* * * * * echo foobar' > /var/spool/cron/crontabs/root && crond -l 2 -f"`
#
FROM alpine:3.17

ARG zonefile=/usr/share/zoneinfo/Asia/Tokyo

RUN apk --update-cache --no-cache add tzdata curl ca-certificates && \
    cp ${zonefile} /etc/localtime && \
    apk del tzdata

CMD crond -l 2 -f
