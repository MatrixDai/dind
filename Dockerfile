FROM docker:dind

LABEL author="Matrix Dai <sexiszero@gmail.com>"

ENV PS1="\h:\w\$ "

RUN apk update && \
    apk add vim zip git subversion python screen && \
    curl -s https://bootstrap.pypa.io/get-pip.py | python && \
    pip install awscli
