all: clear install gen-example

.PHONY: protom
protom:
	protoc -I $(GOPATH)/src:. --go_out=paths=source_relative:. --marshaler_out=paths=source_relative:. proto/test.proto

.PHONY: protomd
protomd:
	protoc -I $(GOPATH)/src:. --go_out=paths=source_relative:. --marshaler_out=debug=true,paths=source_relative:.  proto/test.proto

.PHONY: proto
proto:
	protoc -I $(GOPATH)/src:. --go_out=paths=source_relative:. proto/test.proto

clear:
	rm -f proto/test.pb.go
	rm -f proto/test.marshaler.pb.go