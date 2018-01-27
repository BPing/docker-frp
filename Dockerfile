FROM alpine:3.6
MAINTAINER cbping  452775680@qq.com

WORKDIR /opt/frp

COPY frps /opt/frp/
COPY frps.ini /opt/frp/

RUN chmod 770 -R /opt/frp/

EXPOSE $bind_port $vhost_http_port $dashboard_port

ENTRYPOINT ["./frps"]
CMD ["-c","./frps.ini"]