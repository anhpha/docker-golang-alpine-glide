FROM golang:alpine

RUN apk add --update git curl && \
    mkdir -p /go/src/app && \
    mkdir -p /go/src/app/bin

ENV SRC_DIR=/go/src/app
ENV BIN_DIR=/go/src/app/bin


RUN curl https://glide.sh/get | sh

EXPOSE 80

