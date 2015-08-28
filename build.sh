#!/bin/sh

set -euo pipefail

docker build -t stubbeego .

docker run -a stdin -a stdout -P stubbeego ./test.sh > report.xml
