FROM golang:alpine AS builder
RUN apk add --no-cache git && mkdir -p $GOPATH/src/github.com/DTherHtun/k8smm-weblab && go get github.com/rakyll/statik 
WORKDIR $GOPATH/src/github.com/DTherHtun/k8smm-weblab
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-w -s" -a -installsuffix cgo -o /go/bin/k8smm-weblab .
FROM scratch
COPY --from=builder /go/src/github.com/DTherHtun/k8smm-weblab/index.html /go/bin/index.html
COPY --from=builder /go/bin/k8smm-weblab /go/bin/k8smm-weblab
ENTRYPOINT ["/go/bin/k8smm-weblab"]
EXPOSE 8080
