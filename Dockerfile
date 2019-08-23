FROM alpine:3.8
MAINTAINER Dmitrii Demin <mail@demin.co>

ADD server.py /opt/
ADD version /opt/

RUN apk add --no-cache --update python3 \
&&  pip3 install requests

WORKDIR /opt

ENTRYPOINT ["/usr/bin/python3", "-u", "/opt/server.py"]

EXPOSE 8000