FROM golang:1.11.2 as build_env
 
# dep 依存管理
#RUN go get -u github.com/golang/dep/cmd/dep

COPY ./src /go/src
WORKDIR /go/src
# ビルド処理
ENV CGO_ENABLED 0
RUN go build -o server main.go
 
# 実行環境
FROM alpine:latest as run_env
# タイムゾーン
RUN apk --update add tzdata
COPY --from=build_env /go/src/server /usr/local/bin/server
ENTRYPOINT ["/usr/local/bin/server"]