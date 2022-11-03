This project is a simple implementation of kad-dht bootstrap node based on go-libp2p.

### Usage:
1. Go module download
   ```bash
   go mod tidy
   ``` 
2. Run as default(bind on '0.0.0.0' port:4001):
*  ` go run main.go `


2. or Run with custom:
*  `go run main.go -host [host] -port [port]`


example output:
```
[*] Listening on: 0.0.0.0 with port: 4001

[*] Your Bootstrap ID Is: /ip4/0.0.0.0/tcp/4001/p2p/QmP2C45o2vZfy1JXWFZDUEzrQCigMtd4r3nesvArV8dFKd
```

1. Copy the bootstrap id to your bootstrap nodes list and enjoy.

### Notice: for a test example with kad-dht, visit [go-libp2p-examples](https://github.com/libp2p/go-libp2p-examples/blob/master/chat-with-rendezvous/chat.go)
