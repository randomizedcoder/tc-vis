.PHONY: all install clean

all: tc-vis

install: tc-vis
	install tc-vis /usr/local/bin/

clean:
	go clean

tc-vis: tc-vis.go
	go build

# https://go.dev/wiki/GoArm
arm567:
	GOARCH=arm go build -o tc-vis-arm567
	file tc-vis-arm567

arm8:
	GOARCH=arm64 go build -o tc-vis-arm8
	file tc-vis-arm8