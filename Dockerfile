FROM quay.io/projectquay/golang:1.20 as builder

WORKDIR /go/src/app
COPY . .