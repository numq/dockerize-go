FROM golang:alpine
WORKDIR /build
COPY . .
RUN go get -d -v ./...
RUN go install -v ./...
RUN go build -o target ./main

FROM alpine:latest
COPY --from=0 /build/target .
CMD ["./target"]