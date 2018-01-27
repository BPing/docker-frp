# docker-frp

   docker run frps

# Usage

### docker run

```
  docker run -td  -p 7000:7000 -p 8080:8080 -p 7500:7500 cbping/frps
```

To build the image, simply invoke

     docker build --build-arg bind_port=7000 vhost_http_port=8080 dashboard_port=7500 github.com/Bping/docker-frps

A prebuilt container is also available in the docker index

    docker pull cbping/frps


### compose

**config**

    The `.env` and `frp/frps/frps.ini` configuration ports must be consistent

**start**

```
  docker-compose up -d
```




