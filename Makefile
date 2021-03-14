all: linux macos windows

linux:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -tags netgo -ldflags '-w -extldflags "-static"' -o target/custom_fnrunner ./main.go

macos:
	CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -a -tags netgo -ldflags '-w -extldflags "-static"' -o target/custom_fnrunner_darwin ./main.go

windows:
	CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -a -tags netgo -ldflags '-w -extldflags "-static"' -o target/custom_fnrunner.exe ./main.go

clean:
	rm -rf target