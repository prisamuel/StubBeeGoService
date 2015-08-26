#!/bin/sh

set -euo pipefail

export PATH=$PATH:$GOPATH/bin

go get github.com/tools/godep

go get -u github.com/jstemmer/go-junit-report

godep restore

go test -v | go-junit-report > report.xml

go build
