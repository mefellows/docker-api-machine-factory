# Golang Docker Microservice


## Getting Started

* Install Docker and Boot2Docker (`brew install docker boot2docker`)
* Install the Go cross-compiler [Gox](https://github.com/mitchellh/gox) 

	```
	go get github.com/mitchellh/gox
	gox -build-toolchain
	```
	
## Build and Run application in Docker

```
time gox -osarch="linux/amd64" -output="micro-go" && docker build -t mfellows/micro-go . && docker run --name api --rm -i -t -p 8000:8000 mfellows/micro-go
```

This will build a binary for 64bit linux with the name `micro-go`, create a Docker image and then run the image exposing port `8000`.

The API is now running on port 8000, `curl` until your heart is content:

```
curl $(boot2docker ip):8000/hello/peeps
```
