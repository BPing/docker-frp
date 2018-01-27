# docker-frp

   frp docker image

# 使用

### docker:使用编译好的镜像

```
  docker run -td  -p 7000:7000 -p 8080:8080 -p 7500:7500 cbping/docker-frps
```

### compose：本地重新编译启动

**配置**

* `.env` 里面的端口配置务必一一对应`frp/frps/frps.ini` 里的端口配置

**启动**

```
  docker-compose up -d
```




