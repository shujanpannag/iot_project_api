GOOS = linux

build:
	GOOS=${GOOS} go build -ldflags="-w -s" -o iot_api cmd/main.go
.PHONY: go-build

vendor:
	go mod vendor
.PHONY: vendor
