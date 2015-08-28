#!/bin/sh

godep restore
go test -v | go-junit-report
