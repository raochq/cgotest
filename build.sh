#!/bin/bash

PWD=$(pwd)
export CGO_CFLAGS="-g -O2 -I${PWD}/include -I${PWD}/include/luajit-2.1"
export CGO_LDFLAGS="-g -O2 -L${PWD}/lib/$(go env GOOS)_$(go env GOARCH) -ltolua -lluajit-5.1 -ldl -lm"
go build
