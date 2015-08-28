#!/bin/sh

set -euo pipefail

godep restore
go test -v | go-junit-report
