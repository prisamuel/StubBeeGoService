# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang:1.4.2

# Copy the local package files to the container's workspace.
ADD . /go/src/github.com/prisamuel/StubBeeGoService

# Build the outyet command inside the container.
# (You may fetch or manage dependencies here,
# either manually or with a tool like "godep".)
RUN go get -u github.com/jstemmer/go-junit-report && \
    go get -u github.com/tools/godep

RUN go get github.com/prisamuel/StubBeeGoService

# Run the outyet command by default when the container starts.

WORKDIR /$GOPATH/src/github.com/prisamuel/StubBeeGoService

CMD /$GOPATH/bin/StubBeeGoService

# Document that the service listens on port 8080.
EXPOSE 8080
