FROM docker:dind

LABEL author="Matrix Dai <sexiszero@gmail.com>"

ENV PS1="\h:\w\$ "

RUN apk update && \
    apk add vim git subversion python && \
    curl -s https://bootstrap.pypa.io/get-pip.py | python && \
    pip install awscli

WORKDIR /root
