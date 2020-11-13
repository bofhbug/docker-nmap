FROM alpine:edge

MAINTAINER Max Peal (https://github.com/MaxPeal)

RUN apk update && \
    apk add --no-cache nmap && \
    rm -f /tmp/* /etc/apk/cache/*

ENTRYPOINT ["nmap"]

CMD ["--help"]
