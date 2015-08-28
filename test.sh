#!/bin/sh

set -e

godep restore
go test -v | go-junit-report
