FROM alpine:latest

LABEL maintainer Bostjan Bozic <bozic.bostjann@gmail.com>

WORKDIR /

RUN apk add --no-cache bash

ADD run.sh /

RUN chmod +x run.sh

ENTRYPOINT ["/run.sh"]
