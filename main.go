package main

import (
	"fmt"

	"github.com/raochq/cgotest/golua"
)

func main() {
	stack := golua.NewLuaStack()
	_ = stack
	fmt.Println("finish")
}
