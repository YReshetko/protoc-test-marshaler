package main

import (
	"fmt"
	"github.com/YReshetko/protoc-test-marshaler/proto"
)

func main() {
	msg := proto.TestMessage{
		StrField:  "Hello World",
		BoolField: true,
		IntField:  42,
	}

	str := msg.CustomMarshal()
	fmt.Println(str)
}
