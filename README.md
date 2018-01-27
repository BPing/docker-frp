# docker-frp

# 启动

```
  docker-compose up -d
```

# 配置

* `.env` 里面的端口配置务必一一对应`frp/frps/frps.ini` 里的端口配置


# docker

```
  docker run -td  -p 7000:7000 -p 8080:8080 -p 7500:7500 cbping/docker-frps
```
