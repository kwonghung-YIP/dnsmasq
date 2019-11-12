FROM alpine:3.10
LABEL maintainer="kwonghung.yip@gmail.com"
LABEL description="dnsmasq v2.80 (DNS + DHCP) server running on alpine v3.10"

EXPOSE 53
EXPOSE 67/udp

RUN apk add --verbose --no-cache dnsmasq

ENTRYPOINT ["dnsmasq","--no-daemon"]
