FROM alpine:3.6
MAINTAINER cbping  452775680@qq.com

WORKDIR /opt/frp

COPY frp/frps_0210/frps /opt/frp/
COPY frp/frps_0210/frps.ini /opt/frp/


RUN chmod 770 -R /opt/frp/

ARG bind_port=7000
ARG vhost_http_port=8081
ARG dashboard_port=7500

EXPOSE $bind_port $vhost_http_port $dashboard_port

ENTRYPOINT ["./frps"]
CMD ["-c","./frps.ini"]