FROM golang:1.18-alpine AS builder

WORKDIR /src
ADD . /src

RUN go mod tidy
RUN CGO_ENABLED=0 go build -o ./simple-bootstrap-node ./main.go  

FROM scratch
COPY --from=builder /src/simple-bootstrap-node /app/

EXPOSE 4001

ENTRYPOINT ["/app/simple-bootstrap-node"]