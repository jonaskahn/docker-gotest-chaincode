FROM centos:7

LABEL MAINTAINER="tuyendev@gmail.com"

RUN yum update; yum  -y upgrade; yum -y clean all;
RUN yum install -y  wget git; yum -y clean all;
RUN wget https://dl.google.com/go/go1.12.17.linux-amd64.tar.gz -P /tmp
RUN tar -C /usr/local -xzf /tmp/go1.12.17.linux-amd64.tar.gz
RUN echo 'export GOROOT=/usr/local/go' | tee -a ~/.bashrc
RUN echo 'export GOPATH=/go' | tee -a ~/.bashrc
RUN echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' | tee -a ~/.bashrc
RUN echo 'export GO111MODULE=on' | tee -a ~/.bashrc
RUN source ~/.bashrc

WORKDIR /go/src

CMD [ "bash" ]