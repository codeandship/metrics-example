FROM golang:1.12-alpine

ADD main.go /build/main.go

WORKDIR /build

RUN GO111MODULE=on GOPROXY=https://proxy.golang.org CGO_ENABLED=0 go build -o app main.go

FROM scratch

COPY --from=0 /build/app /app

ENTRYPOINT [ "/app" ]