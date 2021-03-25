FROM purplekarrot/mingw-w64-x86-64:latest

ENV GOLANG_VERSION=1.15.10

RUN apt-get update
RUN apt-get install -y --no-install-recommends wget
RUN wget https://golang.org/dl/go$GOLANG_VERSION.linux-amd64.tar.gz
RUN tar -xzf go$GOLANG_VERSION.linux-amd64.tar.gz 
RUN rm go$GOLANG_VERSION.linux-amd64.tar.gz
ENV GOROOT=/go
ENV PATH=/go/bin:$PATH

ENTRYPOINT /bin/bash
