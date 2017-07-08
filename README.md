# docker-apache-proxy - a Docker container running a continuous Apache forward proxy

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-apache-proxy/

# EXAMPLE

```
$ docker run -d -p 8080:8080 mcandre/docker-apache-proxy:latest
fa627d9c103f69120ff39232db73fc19d98a4b75279bdc0ca951ba8df88dfd7b

$ http_proxy=http://10.0.75.0 curl http://icanhazip.com
curl: (7) Failed to connect to 10.0.75.0 port 1080: Timed out
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)
* [editorconfig-cli](https://github.com/amyboyd/editorconfig-cli) (e.g. `go get github.com/amyboyd/editorconfig-cli`)
* [flcl](https://github.com/mcandre/flcl) (e.g. `go get github.com/mcandre/flcl/...`)
