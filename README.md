# docker-apache-proxy - a Docker container running a continuous Apache forward proxy

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-apache-proxy/

# EXAMPLE

```
$ make
docker-compose up &
sleep 3

Creating dockerapacheproxy_docker-apache-proxy_1 ...
Creating dockerapacheproxy_docker-apache-proxy_1 ... done
Attaching to dockerapacheproxy_docker-apache-proxy_1

http_proxy=http://10.0.75.1 wget -q -O- http://icanhazip.com
63.162.123.109
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)
* [editorconfig-cli](https://github.com/amyboyd/editorconfig-cli) (e.g. `go get github.com/amyboyd/editorconfig-cli`)
* [flcl](https://github.com/mcandre/flcl) (e.g. `go get github.com/mcandre/flcl/...`)
