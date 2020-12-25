FROM alpine:3.11.7
LABEL maintainer="217heidai"
LABEL name="brook_relay"
ENV TZ=Asia/Shanghai
ENV VERSION=v20210101
ENV server_ip=""
ENV server_port=""
ENV listen_port=""

COPY brook_linux_amd64 /
RUN set -ex; \
	mkdir /opt/brook; \
	mv /brook_linux_amd64 /opt/brook/; \
	chmod a+x /opt/brook/brook_linux_amd64; \
	ln -s /opt/brook/brook_linux_amd64 /bin/brook; \
	ln -snf /usr/share/zoneinfo/$TZ /etc/localtime; \
	echo $TZ > /etc/timezone
ENTRYPOINT ["sh","-c","brook relay -f :$listen_port -t $server_ip:$server_port"]