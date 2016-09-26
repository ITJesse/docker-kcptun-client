FROM ubuntu:14.04

MAINTAINER ITJesse <jesse@itjesse.cn>

# RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
# ADD ./sources.list.trusty /etc/apt/sources.list

ENV DEBIAN_FRONTEND noninteractive
WORKDIR /root

COPY start.sh /root/start.sh

RUN apt-get update && apt-get install -y wget \
	&& wget https://github.com/xtaci/kcptun/releases/download/v20160922/kcptun-linux-amd64-20160922.tar.gz \
	&& tar zxvf kcptun-linux-amd64-20160922.tar.gz && rm /root/kcptun-linux-amd64-20160922.tar.gz \

	&& apt-get autoremove wget --purge -y \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/root/start.sh"]

EXPOSE 8388/udp



