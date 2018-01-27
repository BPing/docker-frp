FROM alpine:3.6
MAINTAINER cbping  452775680@qq.com

WORKDIR /opt/frp

COPY frp/frps/frps /opt/frp/
COPY frp/frps/frps.ini /opt/frp/

RUN chmod 770 -R /opt/frp/

ARG bind_port
ARG vhost_http_port
ARG dashboard_port

EXPOSE $bind_port $vhost_http_port $dashboard_port

ENTRYPOINT ["./frps"]
CMD ["-c","./frps.ini"]