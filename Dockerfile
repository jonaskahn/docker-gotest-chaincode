FROM golang:1.12.17

LABEL MAINTAINER="tuyendev@gmail.com"

RUN apt update; apt -y upgrade
RUN mkdir -p /go/src/gopkg.in/mcmturner
RUN cd /go/src/gopkg.in/mcmturner; git clone https://github.com/jcmturner/gokrb5 gokrb5.v7
RUN cd /go/src/gopkg.in/mcmturner/gokrb5.v7; git fetch && git fetch --tags; git checkout v7.5.0
WORKDIR /go/src

CMD [ "bash" ]