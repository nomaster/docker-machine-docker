FROM golang as go
ENV CGO_ENABLED=0
RUN go get github.com/docker/machine/cmd/docker-machine

FROM alpine as certs
RUN apk --update add ca-certificates

FROM scratch
ENTRYPOINT ["/docker-machine"]
COPY --from=certs etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
COPY --from=go /go/bin/docker-machine /docker-machine
